import { defineStore } from "pinia"
import { ref, computed, reactive, nextTick } from "vue"
import { Notify } from "quasar"
import supabase from "src/config/supabase"
import { useShowErrorMessage } from "src/use/useShowErrorMessage"
import { useStoreAuth } from "src/stores/storeAuth"

let entriesChannel

export const useStoreEntries = defineStore("entries", () => {
  const entries = ref([
    // {
    //   id: 'id1',
    //   name: 'Salary',
    //   amount: 4999.99,
    //   paid: true
    //   order: 1
    // },
    // {
    //   id: 'id2',
    //   name: 'Rent',
    //   amount: -999,
    //   paid: false,
    //   order: 2
    // },
    // {
    //   id: 'id3',
    //   name: 'Phone bill',
    //   amount: -14.99,
    //   paid: false,
    //   order: 3
    // },
    // {
    //   id: 'id4',
    //   name: 'Unknown',
    //   amount: 0,
    //   paid: false,
    //   order: 4
    // },
  ])

  const entriesLoaded = ref(false)
  const storeAuth = useStoreAuth()
  const options = reactive({
    sort: false,
  })

  const balance = computed(() => {
    return entries.value.reduce((accumulator, { amount }) => {
      return accumulator + amount
    }, 0)
  })

  const balancePaid = computed(() => {
    return entries.value.reduce((accumulator, { amount, paid }) => {
      return paid ? accumulator + amount : accumulator
    }, 0)
  })

  const runningBalances = computed(() => {
    let runningBalances = [],
      currentRunningBalance = 0

    if (entries.value.length) {
      entries.value.forEach((entry) => {
        let entryAmount = entry.amount ? entry.amount : 0
        currentRunningBalance = currentRunningBalance + entryAmount
        runningBalances.push(currentRunningBalance)
      })
    }

    return runningBalances
  })

  const loadEntries = async () => {
    entriesLoaded.value = false
    let { data, error } = await supabase
      .from("entries")
      .select("*")
      .eq("user_id", storeAuth.userDetails.id)
      .order("order", {
        ascending: true,
      })
    if (error) useShowErrorMessage(error.message)
    if (data) {
      entries.value = data
      entriesLoaded.value = true
      subscribeToEntries()
    }
  }

  const subscribeToEntries = () => {
    entriesChannel = supabase
      .channel("entries-channel")
      .on(
        "postgres_changes",
        {
          event: "*",
          schema: "public",
          table: "entries",
          filter: `user_id=eq.${storeAuth.userDetails.id}`,
        },
        (payload) => {
          if (payload.eventType === "INSERT") {
            entries.value.push(payload.new)
          }
          if (payload.eventType === "UPDATE") {
            const entryId = payload.new.id
            const index = getEntryIndexById(entryId)
            Object.assign(entries.value[index], payload.new)
          }
          if (payload.eventType === "DELETE") {
            const entryId = payload.old.id
            const index = getEntryIndexById(entryId)
            if (index !== -1) entries.value.splice(index, 1)
          }
        }
      )
      .subscribe()
  }

  const unsubscribeFromEntries = () => {
    if (entriesChannel) {
      supabase.removeChannel(entriesChannel)
      entriesChannel = null
    }
  }

  const addEntry = async (addEntryForm) => {
    const { data, error } = await supabase
      .from("entries")
      .insert([
        {
          name: addEntryForm.name,
          amount: addEntryForm.amount,
          order: generateOrderNumber(),
          user_id: storeAuth.userDetails.id,
        },
      ])
      .select()

    if (error) useShowErrorMessage(error.message)
  }

  const updateEntry = async (entryId, column, value) => {
    const entryIndex = getEntryIndexById(entryId)
    const previousValue = entries.value[entryIndex][column]
    Object.assign(entries.value[entryIndex], { [column]: value })

    const { error } = await supabase
      .from("entries")
      .update({ [column]: value })
      .eq("id", entryId)
      .select()

    if (error) {
      Object.assign(entries.value[entryIndex], { [column]: previousValue })
      useShowErrorMessage(error.message)
    }
  }

  const deleteEntry = async (entryId) => {
    const { error } = await supabase.from("entries").delete().eq("id", entryId)
    if (error) useShowErrorMessage(error.message)
    else {
      removeSlideItemIfExists(entryId)
      Notify.create({
        message: "Entry deleted",
        position: "top",
      })
    }
  }

  const resetEntries = () => {
    entries.value = []
  }

  const updateOrders = async () => {
    entries.value.forEach((entry, index) => {
      entry.order = index + 1
    })

    const { error } = await supabase
      .from("entries")
      .upsert(entries.value)
      .select()

    if (error) useShowErrorMessage(error.message)
  }

  const sortEnd = ({ oldIndex, newIndex }) => {
    const movedEntry = entries.value[oldIndex]
    entries.value.splice(oldIndex, 1)
    entries.value.splice(newIndex, 0, movedEntry)
    updateOrders()
  }

  // helpers

  const generateOrderNumber = () => {
    const maxOrder = entries.value.reduce((max, entry) => {
      return Math.max(max, entry.order)
    }, 1)
    return maxOrder + 1
  }

  const getEntryIndexById = (entryId) => {
    return entries.value.findIndex((entry) => entry.id === entryId)
  }

  const removeSlideItemIfExists = (entryId) => {
    // hacky fix: when deleting (after sorting),
    // sometimes the slide item is not removed
    // from the dom. this will remove the slide
    // item from the dom if it still exists
    // (after entry removed from entries array)
    nextTick(() => {
      const slideItem = document.querySelector(`#id-${entryId}`)
      if (slideItem) slideItem.remove()
    })
  }

  return {
    // state
    entries,
    entriesLoaded,
    options,

    // getters
    balance,
    balancePaid,
    runningBalances,

    // actions
    loadEntries,
    addEntry,
    deleteEntry,
    updateEntry,
    resetEntries,
    sortEnd,
    unsubscribeFromEntries,
  }
})
