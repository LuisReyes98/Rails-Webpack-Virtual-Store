<script>
import template from './home.html.slim';

export default {
  mixins: [template],
  props: ["products","groups"],
  data: function () {
    return {
      d_products: this.products,
      
    }
  },
  // beforeMount() {
  //   this.d_products = [...this.products];
  // },
  methods: {
    updateDisplayedProducts: function(products_to_show){
      this.d_products = products_to_show;
    },
  },
  
}
</script>

<style lang="scss" scoped>

  .item_container {
    display: flex;
    flex-wrap: wrap;
    padding: 0;
    justify-content: center;
    align-items: center;
  }
  .title{
    font-size: 2rem;
    color:#000;
    font-weight: bold;
    text-transform: capitalize;
  }
  .option{
    font-size: 0.5rem;
  }
</style>  