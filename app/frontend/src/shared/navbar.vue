<script>
import template from './navbar.html.slim';

export default {
  mixins: [template],
  props: ["current_site","current_username","user_access","isuser_signin"],
  
}
</script>

<style lang="scss" scoped>
nav{
  background-color: #A33400;
}
</style>
