import { reactive } from "vue"
import { useRouter } from "vue-router"
import { defineStore } from "pinia"
import supabase from "src/config/supabase"
import { useShowErrorMessage } from "src/use/useShowErrorMessage"
import { useStoreEntries } from "src/stores/storeEntries"
import { useStoreSettings } from "src/stores/storeSettings"

export const useStoreAuth = defineStore("auth", () => {
  const userDetailsDefault = {
    id: null,
    email: null,
  }

  const userDetails = reactive({
    ...userDetailsDefault,
  })

  const storeEntries = useStoreEntries()
  const storeSettings = useStoreSettings()

  const init = () => {
    const router = useRouter()

    supabase.auth.onAuthStateChange((event, session) => {
      if (event === "SIGNED_IN" || event === "INITIAL_SESSION") {
        if (session !== null) {
          userDetails.id = session.user.id
          userDetails.email = session.user.email
          storeEntries.loadEntries()
          storeSettings.getAvatarUrl()
          router.push("/")
        }
      } else if (event === "SIGNED_OUT") {
        Object.assign(userDetails, userDetailsDefault)
        router.replace("/auth")
        storeEntries.unsubscribeFromEntries()
        storeEntries.resetEntries()
        storeSettings.resetProfile()
      }
    })
  }

  const registerUser = async ({ email, password }) => {
    let { data, error } = await supabase.auth.signUp({
      email,
      password,
    })

    if (error) useShowErrorMessage(error.message || "Could not register user")
    // if (data) console.log('data: ', data)
  }

  const loginUser = async ({ email, password }) => {
    let { data, error } = await supabase.auth.signInWithPassword({
      email,
      password,
    })

    if (error) useShowErrorMessage(error.message || "Could not log in user")
    // if (data) console.log('data: ', data)
  }

  const logoutUser = async () => {
    let { error } = await supabase.auth.signOut()
    if (error) useShowErrorMessage(error.message || "Could not log out user")
    // else console.log('User was signed out')
  }

  return {
    userDetails,
    init,
    registerUser,
    loginUser,
    logoutUser,
  }
})
