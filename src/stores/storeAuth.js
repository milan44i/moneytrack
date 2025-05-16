import { reactive } from "vue"
import { useRouter } from "vue-router"
import { defineStore } from "pinia"
import supabase from "src/config/supabase"
import { useShowErrorMessage } from "src/use/useShowErrorMessage"
import { useStoreEntries } from "src/stores/storeEntries"
import { store } from "quasar/wrappers"

export const useStoreAuth = defineStore("auth", () => {
  const userDetailsDefault = {
    id: null,
    email: null,
  }

  const userDetails = reactive({
    ...userDetailsDefault,
  })

  const storeEntries = useStoreEntries()

  const init = () => {
    const router = useRouter()

    supabase.auth.onAuthStateChange((event, session) => {
      if (event === "SIGNED_IN" || event === "INITIAL_SESSION") {
        if (session !== null) {
          userDetails.id = session.user.id
          userDetails.email = session.user.email
          storeEntries.loadEntries()
          router.push("/")
        }
      } else if (event === "SIGNED_OUT") {
        Object.assign(userDetails, userDetailsDefault)
        router.replace("/auth")
        storeEntries.unsubscribeFromEntries()
        storeEntries.resetEntries()
      }
    })
  }

  const registerUser = async ({ email, password }) => {
    let { data, error } = await supabase.auth.signUp({
      email,
      password,
    })

    if (error) useShowErrorMessage(error.message)
    // if (data) console.log('data: ', data)
  }

  const loginUser = async ({ email, password }) => {
    let { data, error } = await supabase.auth.signInWithPassword({
      email,
      password,
    })

    if (error) useShowErrorMessage(error.message)
    // if (data) console.log('data: ', data)
  }

  const logoutUser = async () => {
    let { error } = await supabase.auth.signOut()
    if (error) useShowErrorMessage(error.message)
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
