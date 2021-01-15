<demo>常规使用</demo>
<template>
  <div>
    <Button>click!</Button>
    <Button theme="button">click!</Button>
    <Button theme="link">click!</Button>
    <Button theme="text">click!</Button>
  </div>
</template>
<script lang="ts">
import { Button } from "../lib/index";
export default {
  components: { Button },
};
</script>
