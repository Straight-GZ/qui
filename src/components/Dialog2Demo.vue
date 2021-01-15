<demo>一键打开 Dialog</demo>
<template>
  <div>
    <Button @click="showDialog">点击打开</Button>
  </div>
</template>
<script lang="ts">
import { openDialog } from "../lib/index";
import { Button } from "../lib/index";
export default {
  components: { Button },
  setup() {
    const showDialog = () => {
      openDialog({
        title: "标题",
        content: "内容",
        closeOnClickOverlay: false,
        ok() {
          console.log("ok");
        },
        cancel() {
          console.log("cancel");
        },
      });
    };
    return { showDialog };
  },
};
</script>
