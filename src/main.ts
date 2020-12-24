import { createApp } from "vue";
import App from "./App.vue";
import "./index.css";
import { createWebHashHistory, createRouter } from "vue-router";
import Straight from "./components/Straight.vue";
import Geng from "./components/Straight2.vue";

const history = createWebHashHistory();
const router = createRouter({
  history: history,
  routes: [
    { path: "/", component: Straight },
    { path: "/xxx", component: Geng },
  ],
});

const app = createApp(App);
app.use(router);
app.mount("#app");
