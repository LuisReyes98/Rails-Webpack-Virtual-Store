<script>
import template from './_sidebar.html.slim';

export default {
  mixins: [template],
  props: ["groups"],
}
</script>


<style lang="scss" scoped>
  .group{
    text-transform: uppercase;
    font-weight: bolder;
    font-size: 2rem;
    word-wrap: break-word;
  }
  .list-element{
    text-transform: capitalize;
    font-weight: bold;
    position: relative;
    background: transparent;
    border-color: rgb(80, 189, 197);
    z-index: 1;
    cursor: pointer;

    
    &::before{
      content: '';
      background-color: #5FFFEF;
      top:-1px;
      left:-1px;
      bottom:-1px;
      width: 0%;
      transition: width 0.5s;
      position: absolute;
      z-index: -1;
    }
    &:hover{
      &::before{
        width: calc( 100% + 2px) ;
      }
    }

  } 
  
</style>
