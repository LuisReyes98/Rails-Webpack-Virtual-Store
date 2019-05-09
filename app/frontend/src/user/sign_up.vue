<script>
import template from './sign_up.html.slim';

export default {
  mixins: [template],
	props: ['email','validEmail','typed_email','typed_password','errors','password','samePassword','password1','password2'],

  methods: {
				validateEmail: function (email) {
					var re =	/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
					return re.test(email);
				},
				checkEmail: function (ev) {
      		this.typed_email = true;
					this.validEmail = this.validateEmail(this.email);
				},
				checkPassword: function () {
      		this.typed_password = true;					
					if (this.password1.localeCompare(this.password2) == 0 && this.password1 !== null && this.password2 !== null && this.password1 !== "") {
						this.samePassword = true;
					}else{
						this.samePassword = false;
					}
				},
			},
  
}
</script>

<style lang="scss" scoped>

</style>
