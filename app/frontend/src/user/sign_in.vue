<script>
import template from './sign_in.html.slim';

export default {
  mixins: [template],
  props: ['email','validEmail','errors'],
  data: {
    'typed_email': false,
  },
  methods: {
    submit_demo: function(){
      console.log(this.email);
      console.log(this.validEmail);
    },
    validateEmail: function (email) {
      var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
      return re.test(email);
    },
    onchange: function(ev) {
      this.typed_email = true;
      this.validEmail = this.validateEmail(this.email);
    }
  },
  
}
</script>

<style lang="scss" scoped>

</style>
