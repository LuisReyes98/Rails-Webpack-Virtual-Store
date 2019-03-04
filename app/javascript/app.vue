<template >
  <div id="app">
    <p class="btn-primary" >{{ message }}</p>
  </div>
</template>

// #app
//   p.btn-primary
//     | {{ message }}
<script>
export default {
  props: ["message"],
}
</script>



<style scoped lang="sass">
  p
    font-size: 2em
    text-align: center
    background-color: green
    color: red
  
</style>
