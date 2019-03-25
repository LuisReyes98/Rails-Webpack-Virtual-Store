<script>
import template from './sign_in.html.slim';

export default {
  mixins: [template],
  props: ['email','validEmail','errors'],
  data: {
    // my_email: this.email,
    password: null,
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
      console.log("a change");
      this.validEmail = this.validateEmail(this.email);
      // this.$emit('checkEmail',this.my_email,this.validEmail);
    }
  },
  
}
</script>

<style lang="scss" scoped>
  .sign_form{
    background-color: #E4FFFC;
  }
  .field_name{
    background-color: #A33400;
    color: #ffffff;
    font-weight: bold;
  }
</style>
