<demo>常规用法</demo>
<template>
  <Button @click="toggle">点击打开</Button>
  <Dialog v-model:visible="x" :closeOnClickOverlay="true" :ok="f1" :cancel="f2">
    <template v-slot:content>
      <strong>hi</strong>
      <div>你好</div>
    </template>
    <template v-slot:title>
      <strong>加粗的标签 </strong>
    </template>
  </Dialog>
</template>
<script lang="ts">
import { Dialog } from "../lib/index";
import { Button } from "../lib/index";
import { ref } from "vue";
export default {
  components: { Dialog, Button },
  setup() {
    const x = ref(false);
    const toggle = () => {
      x.value = !x.value;
    };
    const f1 = () => {
      return false;
    };
    const f2 = () => {};
    return { x, toggle, f1, f2 };
  },
};
</script>
