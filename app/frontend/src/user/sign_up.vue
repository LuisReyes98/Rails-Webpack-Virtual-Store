<script>
import template from './sign_up.html.slim';

export default {
  mixins: [template],
  props: ['email','validEmail','errors','password','samePassword','password1','password2'],
  methods: {
				submit_demo: function () {
					this.errors = true;
					console.log(this.email);
					console.log(this.validEmail);
				},
				validateEmail: function (email) {
					var re =	/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
					return re.test(email);
				},
				onchange: function (ev) {

					this.validEmail = this.validateEmail(this.email);
				},
				checkPassword: function () {
					console.log("comparing");
					if (this.password1.localeCompare(this.password2) == 0 && this.password1 !== null && this.password2 !== null ) {
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
