const { environment } = require('@rails/webpacker')
const erb =  require('./loaders/erb')
const vue = require('./loaders/vue')
const slim = require('./loaders/slim')

const webpack = require('webpack');

environment.loaders.append('slim', slim)
environment.loaders.append('vue', vue)

environment.loaders.append('erb', erb)


environment.plugins.append('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery'
}))

module.exports = environment
