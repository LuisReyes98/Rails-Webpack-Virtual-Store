
<script>
import template from './reports.html.slim';

export default {
  mixins: [template],
  props: ['current_section'],
  data() {
    return {
      date_from: "",      
    }
  },  
}
</script>

<style lang="scss" scoped>

</style>
