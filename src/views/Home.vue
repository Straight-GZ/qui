<template>
  <div>
    <div class="backGround">
      <Topnav />
      <div class="banner">
        <h1>小Q UI</h1>
        <h2 class="description">一个简单的 UI 框架</h2>
        <p class="actions">
          <a href="https://gitee.com/gengzhii/qui">Gitee</a>
          <a href="https://github.com/Straight-GZ/q-ui">Github</a>

          <router-link to="/doc">开始</router-link>
        </p>
      </div>
    </div>
  </div>
  <div class="lunzi-icons">
    <ul>
      <li>
        <svg>
          <use xlink:href="#icon-vue"></use>
        </svg>
        <h3>基于 Vue 3</h3>
        <p>骄傲地使用了 Vue 3 Composition API</p>
      </li>
      <li>
        <svg>
          <use xlink:href="#icon-ts"></use>
        </svg>
        <h3>基于 TypeScript</h3>
        <p>源代码采用 TypeScript 书写（非严格检查）</p>
      </li>
      <li>
        <svg>
          <use xlink:href="#icon-light"></use>
        </svg>
        <h3>代码易读</h3>
        <p>每个组件的源代码都极其简洁</p>
      </li>
    </ul>
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
  color: #f1f1f8;
  background: linear-gradient(
    145deg,
    rgba(31, 29, 42, 1) 0%,
    rgba(119, 123, 233, 1) 100%
  );
  clip-path: ellipse(90% 60% at 50% 40%);
}
.lunzi-icons {
  margin: 64px auto;
  width: 400px;
  @media (min-width: 800px) {
    width: 800px;
  }
  @media (min-width: 1200px) {
    width: 1200px;
  }
  > ul {
    display: flex;
    flex-wrap: wrap;
    > li {
      width: 400px;
      margin: 16px 0;
      display: grid;
      justify-content: start;
      align-content: space-between;
      grid-template-areas:
        "icon title"
        "icon text";
      grid-template-columns: 80px auto;
      grid-template-rows: 1fr auto;
      > svg {
        grid-area: icon;
        width: 64px;
        height: 64px;
      }
      > h3 {
        grid-area: title;
        font-size: 28px;
      }
      > p {
        grid-area: text;
      }
    }
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
