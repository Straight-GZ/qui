<template>
  <button
    class="lunzi-switch"
    @click="toggle"
    :class="{ 'lunzi-checked': value }"
  >
    <span></span>
    <span class="on" v-if="value">on</span>
    <span class="off" v-if="!value">off</span>
  </button>
</template>
<script lang="ts">
import { ref } from "vue";
export default {
  props: {
    value: Boolean,
  },
  setup(props, context) {
    const toggle = () => {
      context.emit("update:value", !props.value);
    };
    return { toggle };
  },
};
</script>
<style lang="scss">
$h: 22px;
$h2: $h - 4px;
.lunzi-switch {
  height: $h;
  width: $h * 2;
  border: none;
  background: #bfbfbf;
  border-radius: $h/2;
  position: relative;
  > span {
    position: absolute;
    top: 2px;
    left: 2px;
    height: $h2;
    width: $h2;
    background: white;
    border-radius: $h2 / 2;
    transition: all 250ms;
    > .on {
      border: none;
      background: #1890ff;
      width: 50%;
      right: 20px;
    }
  }

  > .off {
    border: none;
    background: #bfbfbf;
    width: 50%;
    left: 20px;
  }
  &.lunzi-checked {
    background: #1890ff;
    > span {
      left: calc(100% - #{$h2} - 2px);
    }
    > .on {
      border: none;
      left: 3px;
      background: #1890ff;
    }
  }
  &:focus {
    outline: none;
  }
  &:active {
    > span {
      width: $h2 + 4px;
    }
  }
  &.lunzi-checked:active {
    > span {
      width: $h2 + 4px;
      margin-left: -4px;
    }
  }
}
</style>
