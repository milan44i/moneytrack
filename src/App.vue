<template>
  <router-view />
</template>

<script setup>
import { onMounted } from "vue";
import { useRouter } from "vue-router";
import { useQuasar } from "quasar";
import { useStoreSettings } from "src/stores/storeSettings";
import { useStoreEntries } from "src/stores/storeEntries";
import { useStoreAuth } from "src/stores/storeAuth";

defineOptions({
  name: "App",
});

const storeSettings = useStoreSettings();
const storeEntries = useStoreEntries();
const storeAuth = useStoreAuth();
const $q = useQuasar();
const router = useRouter();

onMounted(() => {
  storeSettings.loadSettings();
  storeEntries.loadEntries();
  storeAuth.init();

  if ($q.platform.is.electron) {
    ipcRenderer.on("show-settings", () => {
      router.push("/settings");
    });
  }
});

// window.addEventListener('contextmenu', e => {
//   e.preventDefault()
// })
</script>
