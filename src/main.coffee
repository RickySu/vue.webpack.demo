Vue = require 'vue'
VueRouter = require 'vue-router'
Vue.use VueRouter

router = new VueRouter
  hashbang: true
#

App = Vue.extend
  components:
    app:  require './App'

require('./routers.coffee')(router)

router.start App, 'html'