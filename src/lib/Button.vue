<template>
  <button class="lunzi-button" :class="`theme=${theme}`"><slot /></button>
</template>
<script>
export default {
  props: {
    theme: {
      type: String,
      default: "button",
    },
  },
};
</script>
