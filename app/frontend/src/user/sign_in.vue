<script>
import template from './sign_in.html.slim';

export default {
  mixins: [template],  
  data: {
    errors: [],
    password: null,
    email: null,
    validEmail: true,
  },
  methods: {
    submit_demo: function() {
      console.log(this.email);
      console.log(this.validEmail);
    },
    validateEmail: function (email) {
      var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
      return re.test(email);
    },
    checkEmail: function() {
      console.log("a change");
      this.valid_email = this.validateEmail(this.email);
      
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
