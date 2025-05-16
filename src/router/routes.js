const routes = [
  {
    path: "/",
    component: () => import("layouts/MainLayout.vue"),
    children: [
      { path: "", component: () => import("pages/Entries.vue") },
      { path: "settings", component: () => import("pages/Settings.vue") },
    ],
  },
  {
    path: "/auth",
    component: () => import("layouts/AuthLayout.vue"),
    children: [{ path: "", component: () => import("pages/Auth.vue") }],
  },

  // Always leave this as last one,
  // but you can also remove it
  {
    path: "/:catchAll(.*)*",
    component: () => import("pages/ErrorNotFound.vue"),
  },
];

export default routes;
