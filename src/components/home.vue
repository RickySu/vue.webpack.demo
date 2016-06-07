<template>
  <div style="border: 1px solid;">
     scoped
    <component-test></component-test>
  </div>
  <div class="hello">
    <button class="btn btn-lg btn-primary" v-on:click="btnClick">click me</button>
  </div>
</template>

<script lang="coffee" type="text/coffeescript">
  require('bootstrap/dist/js/bootstrap')
  module.exports =
    methods:
      btnClick: (e) ->
        console.log @hello
        alert 'btn click'
        return
    components:
      'component-test':  require 'components/test.vue'
    data: () ->
      return {
        hello: 'hi'
      }
</script>

<style lang="sass?indentedSyntax" type="text/sass" scoped>
  .hello
    font-size: 100px
  .test
    color: red
</style>
