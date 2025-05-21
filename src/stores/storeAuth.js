import { reactive, ref } from "vue"
import { useRouter } from "vue-router"
import { defineStore } from "pinia"
import supabase from "src/config/supabase"
import { Notify } from "quasar"
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

  const seenGreeting = ref(false)

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
          storeSettings.getProfile()
          showGreeting(session.access_token)
          router.push("/")
        }
      } else if (event === "SIGNED_OUT") {
        Object.assign(userDetails, userDetailsDefault)
        router.replace("/auth")
        storeEntries.unsubscribeFromEntries()
        storeEntries.resetEntries()
        storeSettings.resetProfile()
        seenGreeting.value = false
      }
    })
  }

  const showGreeting = async (access_token) => {
    const myHeaders = new Headers()
    myHeaders.append("Authorization", `Bearer ${access_token}`)

    const requestOptions = {
      method: "POST",
      headers: myHeaders,
      redirect: "follow",
    }

    try {
      const response = await fetch(
        `${process.env.SUPABASE_URL}/functions/v1/greeting`,
        requestOptions
      )
      const result = await response.json()

      if (seenGreeting.value) return
      Notify.create({
        message: result.message,
        position: "top",
        timeout: 2000,
      })
      seenGreeting.value = true
    } catch (error) {
      console.error(error)
    }
  }

  const registerUser = async ({ email, password }) => {
    let { data, error } = await supabase.auth.signUp({
      email,
      password,
    })

    if (error) useShowErrorMessage(error.message || "Could not register user")
  }

  const loginUser = async ({ email, password }) => {
    let { data, error } = await supabase.auth.signInWithPassword({
      email,
      password,
    })

    if (error) useShowErrorMessage(error.message || "Could not log in user")
  }

  const logoutUser = async () => {
    let { error } = await supabase.auth.signOut()
    if (error) useShowErrorMessage(error.message || "Could not log out user")
  }

  return {
    userDetails,
    init,
    registerUser,
    loginUser,
    logoutUser,
  }
})
