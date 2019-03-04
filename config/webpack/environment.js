const { environment } = require('@rails/webpacker')
const vue_slim =  require('./loaders/vue-slim')
const vue = require('./loaders/vue')

environment.loaders.append('vue-slim', vue_slim)
environment.loaders.append('vue', vue)
module.exports = environment
