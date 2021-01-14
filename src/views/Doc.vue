<template>
  <div class="layout">
    <Topnav menuIconVisible="true" class="nav" />
    <div class="content">
      <aside v-if="menuVisible">
        <h2>文档</h2>
        <ol>
          <li><router-link to="/doc/intro">介绍</router-link></li>
          <li><router-link to="/doc/install">安装</router-link></li>
          <li><router-link to="/doc/Getstarted">开始使用</router-link></li>
        </ol>
        <h2>组件列表</h2>
        <ol>
          <li><router-link to="/doc/switch">Switch 组件</router-link></li>
          <li><router-link to="/doc/button">Button 组件</router-link></li>
          <li><router-link to="/doc/dialog">Dialog 组件</router-link></li>
          <li><router-link to="/doc/tabs">Tabs 组件</router-link></li>
        </ol>
      </aside>
      <main><router-view /></main>
    </div>
  </div>
</template>
<script lang="ts">
import Topnav from "../components/Topnav.vue";
import { Ref, inject } from "vue";
import { router } from "./touter.ts";
export default {
  components: { Topnav },
  setup() {
    const menuVisible = inject<Ref<boolean>>("menuVisible");
    return { menuVisible };
  },
};
</script>
<style lang="scss" scoped>
$aside-index: 10;
.layout {
  background: white;
  display: flex;
  flex-direction: column;
  height: 100vh;
  > .nav {
    flex-shrink: 0;
  }
  > .content {
    font-size: 20px;
    flex-grow: 1;
    padding-top: 60px;
    padding-left: 226px;
    @media (max-width: 500px) {
      padding-left: 0;
    }
  }
}
.content {
  display: flex;
  > aside {
    flex-shrink: 0;
  }
  > main {
    flex-grow: 1;
    padding: 16px;
    background: white;
  }
}
aside {
  background: lightblue;
  width: 220px;
  padding: 16px 0;
  position: fixed;
  top: 0;
  left: 0;
  padding-top: 70px;
  height: 100%;
  z-index: $aside-index;
  > h2 {
    margin-bottom: 4px;
    padding-left: 16px;
  }
  > ol {
    > li {
      > a {
        display: block;
        padding: 4px 16px;
        text-decoration: none;
      }
      > .router-link-active {
        background: fade-out($color: blue, $amount: 0.9);
        border-right: 5px solid fade-out($color: #000000, $amount: 0.8);
      }
    }
  }
}
main {
  font-size: 20px;
  overflow: auto;
}
</style>
