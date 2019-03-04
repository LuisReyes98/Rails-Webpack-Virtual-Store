
<script>
import template from './hello.html.slim'

export default {
  mixins: [template],

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
