const { environment } = require('@rails/webpacker')
const vue = require('./loaders/vue')
const slim = require('./loaders/slim')


environment.loaders.append('slim', slim)
environment.loaders.append('vue', vue)

module.exports = environment
