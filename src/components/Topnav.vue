<template>
  <div class="topnav">
    <router-link class="logo" to="/"
      ><svg class="icon">
        <use xlink:href="#icon-lunzi"></use>
      </svg>
    </router-link>
    <ul class="menu">
      <li>
        <router-link to="/doc">文档</router-link>
      </li>
    </ul>
    <!-- <span class="toggleAside" @click="toggleMenu"></span> -->
    <svg class="icon toggleAside" v-if="menuIconVisible" @click="toggleMenu">
      <use xlink:href="#icon-caidan"></use>
    </svg>
  </div>
</template>
<script lang="ts">
import { inject, Ref } from "vue";
export default {
  props: {
    menuIconVisible: {
      type: Boolean,
      defult: false,
    },
  },
  setup() {
    const menuVisible = inject<Ref<boolean>>("menuVisible");
    const toggleMenu = () => {
      menuVisible.value = !menuVisible.value;
    };
    return { toggleMenu };
  },
};
</script>
<style lang="scss" scoped>
$white: #f1f1f8;
.topnav {
  color: $white;
  display: flex;
  padding: 16px;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 20;
  justify-content: center;
  align-items: center;
  > .logo {
    max-width: 6em;
    margin-right: auto;
    > svg {
      height: 24px;
      width: 24px;
      border-radius: 50%;
      background: grey;
    }
  }
  > .menu {
    display: flex;
    white-space: nowrap;
    flex-wrap: nowrap;
    li {
      margin: 0 1em;
      > a {
        color: $white;
      }
    }
  }
  > .toggleAside {
    display: none;
    width: 24px;
    height: 24px;
    /* background: red; */
    position: absolute;
    left: 16px;
    top: 50%;
    transform: translateY(-50%);
    color: #00c9db;
  }
  @media (max-width: 500px) {
    > .menu {
      display: none;
    }
    > .logo {
      margin: 0 auto;
    }
    > .toggleAside {
      display: inline-block;
    }
  }
}
</style>
