<script>
import template from './sign_in.html.slim';

export default {
  mixins: [template],
  props: ['email','validEmail','errors','typed_email'],

  methods: {
    validateEmail: function (email) {
      var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
      return re.test(email);
    },
    checkEmail: function(ev) {
      this.typed_email = true;
      this.validEmail = this.validateEmail(this.email);
    }
  },
  
}
</script>

<style lang="scss" scoped>

</style>
