<template>
  <div>
    导航栏 | <router-link to="/">1</router-link> |
    <router-link to="/xxx">2</router-link>
  </div>
  <hr />
  <router-view />
</template>

<script>
import Straight from "./components/Straight.vue";

export default {
  name: "App",
};
</script>
