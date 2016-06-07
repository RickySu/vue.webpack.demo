module.exports = (router) ->
  router.map
    '/':
      name: 'home'
      component: require './components/home.vue'
    '/sync':
      name: 'sync'
      component: require './components/sync.vue'
  return
