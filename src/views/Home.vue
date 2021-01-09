<template>
  <div>
    <div class="backGround">
      <Topnav />
      <div class="banner">
        <h1>轮子 UI</h1>
        <h2 class="description">一个厉害的 UI 框架</h2>
        <p class="actions">
          <a href="">Github</a>
          <router-link to="/doc">开始</router-link>
        </p>
      </div>
    </div>
  </div>
  <div class="lunzi-icons">
    <svg class="icon">
      <use xlink:href="#icon-ts"></use>
    </svg>
    <svg class="icon">
      <use xlink:href="#icon-light"></use>
    </svg>
    <svg class="icon">
      <use xlink:href="#icon-vue"></use>
    </svg>
  </div>
</template>
<script lang="ts">
import Topnav from "../components/Topnav.vue";
export default {
  components: { Topnav },
};
</script>
<style lang="scss" scoped>
$border-radius: 4px;
$blue: #00c9db;
$deepBlue: #3b2f9f;
.backGround {
  background: linear-gradient(
    145deg,
    rgba(31, 29, 42, 1) 0%,
    rgba(119, 123, 233, 1) 100%
  );
}
.lunzi-icons {
  > svg {
    width: 64px;
    height: 64px;
  }
}
.banner {
  color: #f1f1f8;
  padding: 100px 0;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  > .description {
    color: $blue;
  }
  > .actions {
    padding: 8px 0;
    a {
      margin: 0 8px;
      background: $blue;
      color: #fff;
      display: inline-block;
      border-radius: $border-radius;
      padding: 8px 24px;
      &:hover {
        text-decoration: none;
        background: $deepBlue;
      }
    }
  }
}
</style>
