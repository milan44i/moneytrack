import { defineStore } from "pinia"
import { reactive, watch } from "vue"
import { Dark, LocalStorage } from "quasar"
import { useStoreAuth } from "src/stores/storeAuth"
import supabase from "src/config/supabase"
import { useShowErrorMessage } from "src/use/useShowErrorMessage"

export const useStoreSettings = defineStore("settings", () => {
  const storeAuth = useStoreAuth()

  const settings = reactive({
    promptToDelete: true,
    showRunningBalance: false,
    currencySymbol: "$",
    darkMode: false, // false | true | 'auto'
  })

  const profileDefault = {
    avatarFile: null,
    avatarUrl: null,
    bio: "",
  }
  const profile = reactive({
    ...profileDefault,
  })

  watch(
    () => settings.darkMode,
    (value) => {
      Dark.set(value)
    },
    { immediate: true }
  )

  watch(settings, () => {
    saveSettings()
  })

  const saveSettings = () => {
    LocalStorage.set("settings", settings)
  }

  const loadSettings = () => {
    const savedSettings = LocalStorage.getItem("settings")
    if (savedSettings) Object.assign(settings, savedSettings)
  }

  const uploadAvatar = async (file) => {
    const folderName = `${storeAuth.userDetails.id}`
    const fileName = `${Date.now()}_${file.name.replaceAll(" ", "_")}`

    const { data, error } = await supabase.storage
      .from("avatars")
      .upload(`${folderName}/${fileName}`, file)
    if (error) useShowErrorMessage(error.message || "Could not upload avatar")
    if (data) saveAvatarFileName(fileName)
  }

  const saveAvatarFileName = async (fileName) => {
    const { data, error } = await supabase
      .from("profiles")
      .upsert({ id: storeAuth.userDetails.id, avatar_filename: fileName })
      .select()
    if (error)
      useShowErrorMessage(error.message || "Could not save avatar filename")
    if (data) getProfile()
  }

  const resetProfile = () => {
    Object.assign(profile, profileDefault)
  }

  const saveBio = async () => {
    const { data, error } = await supabase
      .from("profiles")
      .upsert({ id: storeAuth.userDetails.id, bio: profile.bio })
      .select()
    if (error) useShowErrorMessage(error.message || "Could not save bio")
  }

  const getProfile = async () => {
    let { data, error } = await supabase
      .from("profiles")
      .select("*")
      .eq("id", storeAuth.userDetails.id)

    if (error) useShowErrorMessage(error.message || "Could not fetch profile")
    if (data && data.length) {
      const fileName = data[0].avatar_filename
      profile.avatarUrl = `${process.env.SUPABASE_URL}/storage/v1/object/public/avatars/${storeAuth.userDetails.id}/${fileName}`
      profile.bio = data[0].bio
    }
  }

  return {
    settings,
    profile,
    loadSettings,
    uploadAvatar,
    resetProfile,
    saveBio,
    getProfile,
  }
})
