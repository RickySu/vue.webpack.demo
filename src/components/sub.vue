<template>
    <div class="test">sub test vue</div>
    <div class="hello">{{hello}}</div>
    <input type="text" v-model="hello" />
</template>

<script lang="coffee" type="text/coffeescript">
module.exports =
  props: ['hello']
</script>

<style lang="sass?indentedSyntax" type="text/sass" scoped>
.hello
  height:  30px
  font-size:  20px
</style>