<template>
    {{msg}}
    <form>
        <div class="form-group">
            <label>input</label>
            <input type="text" class="form-control" v-model="hello">
        </div>
        <div class="form-group">
            <label>sync hello:{{hello}}</label>
            <input type="text" class="form-control" :value="hello" readonly="readonly">
        </div>
    </form>
    <div class="border">
        上層 -&gt; 下層
        <component-sub :hello="hello"></component-sub>
    </div>
    <div class="border">
        上層 &lt;-&gt; 下層
        <component-sub :hello.sync="hello"></component-sub>
    </div>
</template>


<script lang="coffee" type="text/coffeescript">
module.exports =
  methods:
    btnClick: (e) ->
      console.log @hello
      return
  components:
    'component-sub':  require './sub.vue'
  ready: () ->
    @hello = 'hello'
    console.log @msg
    console.log @hello
    return
  data: () ->
    return {
      msg: 'hello ricky'
      hello: ''
    }
</script>

<style lang="sass?indentedSyntax" type="text/sass" scoped>
.border
  border: 1px solid
  margin: 20px
</style>