import { defineStore } from "pinia";
import { ref, computed, reactive, nextTick } from "vue";
import { Notify } from "quasar";
import supabase from "src/config/supabase";
import { useShowErrorMessage } from "src/use/useShowErrorMessage";

export const useStoreEntries = defineStore("entries", () => {
  const entries = ref([
    // {
    //   id: 'id1',
    //   name: 'Salary',
    //   amount: 4999.99,
    //   paid: true
    // },
    // {
    //   id: 'id2',
    //   name: 'Rent',
    //   amount: -999,
    //   paid: false
    // },
    // {
    //   id: 'id3',
    //   name: 'Phone bill',
    //   amount: -14.99,
    //   paid: false
    // },
    // {
    //   id: 'id4',
    //   name: 'Unknown',
    //   amount: 0,
    //   paid: false
    // },
  ]);

  const entriesLoaded = ref(false);

  const options = reactive({
    sort: false,
  });

  const balance = computed(() => {
    return entries.value.reduce((accumulator, { amount }) => {
      return accumulator + amount;
    }, 0);
  });

  const balancePaid = computed(() => {
    return entries.value.reduce((accumulator, { amount, paid }) => {
      return paid ? accumulator + amount : accumulator;
    }, 0);
  });

  const runningBalances = computed(() => {
    let runningBalances = [],
      currentRunningBalance = 0;

    if (entries.value.length) {
      entries.value.forEach((entry) => {
        let entryAmount = entry.amount ? entry.amount : 0;
        currentRunningBalance = currentRunningBalance + entryAmount;
        runningBalances.push(currentRunningBalance);
      });
    }

    return runningBalances;
  });

  const loadEntries = async () => {
    entriesLoaded.value = false;
    let { data, error } = await supabase.from("entries").select("*");
    if (error) useShowErrorMessage(error.message);
    if (data) {
      entries.value = data;
      entriesLoaded.value = true;
      subscribeToEntries();
    }
  };

  const subscribeToEntries = () => {
    supabase
      .channel("entries-channel")
      .on(
        "postgres_changes",
        { event: "*", schema: "public", table: "entries" },
        (payload) => {
          console.log("Change received!", payload);
          if (payload.eventType === "INSERT") {
            entries.value.push(payload.new);
          }
          if (payload.eventType === "UPDATE") {
            const entryId = payload.new.id;
            const index = getEntryIndexById(entryId);
            Object.assign(entries.value[index], payload.new);
          }
          if (payload.eventType === "DELETE") {
            const entryId = payload.old.id;
            const index = getEntryIndexById(entryId);
            if (index !== -1) entries.value.splice(index, 1);
          }
        }
      )
      .subscribe();
  };

  const addEntry = async (addEntryForm) => {
    const { data, error } = await supabase
      .from("entries")
      .insert([{ name: addEntryForm.name, amount: addEntryForm.amount }])
      .select();

    if (error) useShowErrorMessage(error.message);
  };

  const updateEntry = async (entryId, column, value) => {
    const entryIndex = getEntryIndexById(entryId);
    const previousValue = entries.value[entryIndex][column];
    Object.assign(entries.value[entryIndex], { [column]: value });

    const { _data, error } = await supabase
      .from("entriesss")
      .update({ [column]: value })
      .eq("id", entryId)
      .select();

    if (error) {
      Object.assign(entries.value[entryIndex], { [column]: previousValue });
      useShowErrorMessage(error.message);
    }
  };

  const deleteEntry = async (entryId) => {
    const { error } = await supabase.from("entries").delete().eq("id", entryId);
    if (error) useShowErrorMessage(error.message);
    else {
      removeSlideItemIfExists(entryId);
      Notify.create({
        message: "Entry deleted",
        position: "top",
      });
    }
  };

  const sortEnd = ({ oldIndex, newIndex }) => {
    const movedEntry = entries.value[oldIndex];
    entries.value.splice(oldIndex, 1);
    entries.value.splice(newIndex, 0, movedEntry);
  };

  /*
    helpers
  */

  const getEntryIndexById = (entryId) => {
    return entries.value.findIndex((entry) => entry.id === entryId);
  };

  const removeSlideItemIfExists = (entryId) => {
    // hacky fix: when deleting (after sorting),
    // sometimes the slide item is not removed
    // from the dom. this will remove the slide
    // item from the dom if it still exists
    // (after entry removed from entries array)
    nextTick(() => {
      const slideItem = document.querySelector(`#id-${entryId}`);
      if (slideItem) slideItem.remove();
    });
  };

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
    sortEnd,
  };
});
