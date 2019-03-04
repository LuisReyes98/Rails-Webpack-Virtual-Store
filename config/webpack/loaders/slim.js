module.exports = {
  test: /.slim$/,
  loader: [{
    loader: 'vue-template-compiler-loader'
  }, {
    // requires custom slim-lang-loader from 
    // https://github.com/GetSilverfin/slim-lang-loader
    loader: 'slim-lang-loader',
    options: {
      slimOptions: {
        disable_escape: true
      }
    }
  }]
}