<template>
  <div class="container-fluid">
    <component-nav></component-nav>
    <component-test></component-test>
    <router-view></router-view>
    <component-footer></component-footer>
  </div>
</template>

<script lang="coffee" type="text/coffeescript">
  require('bootstrap/dist/js/bootstrap')
  module.exports =
    components:
      'component-test':  require 'components/test.vue'
      'component-nav':  require 'components/nav.vue'
      'component-footer':  require 'components/footer.vue'
</script>

<style src="bootstrap/dist/css/bootstrap.css"></style>
