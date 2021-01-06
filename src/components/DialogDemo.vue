<template>
  <div>dialog 内容</div>
  <h1>示例1</h1>
  <Button @click="toggle">toggle</Button>
  <Dialog v-model:visible="x" :closeOnClickOverlay="true" :ok="f1" :cancel="f2"
    ><template v-slot:content
      ><strong>hi</strong>
      <div>你好</div>
    </template>
    <template v-slot:title>
      <strong>加粗的标签 </strong>
    </template>
  </Dialog>
  <h1>示例2</h1>
  <div>
    <Button @click="showDialog">show</Button>
  </div>
  <!-- 等价于 <Dialog :visible="x" @update:visible="x = $event"></Dialog> -->
</template>
<script lang="ts">
import Dialog from "../lib/Dialog.vue";
import Button from "../lib/Button.vue";
import { ref } from "vue";
import { openDialog } from "../lib/openDialog";
export default {
  components: { Dialog, Button },
  setup() {
    const x = ref(false);
    const toggle = () => {
      x.value = !x.value;
    };
    const f1 = () => {
      console.log("1");
      return false;
    };
    const f2 = () => {
      console.log("2");
    };
    const showDialog = () => {
      openDialog({
        title: "标题",
        content: "内容",
        closeOnClickOverlay: true,
        ok() {
          console.log("ok");
        },
        cancel() {
          console.log("cancel");
        },
      });
    };
    return { x, toggle, f1, f2, showDialog };
  },
};
</script>
