<template>
  <div>
    <Nav />
    <nuxt />
  </div>
</template>

<script>
import Vue from 'vue'
import Nav from '~/components/Nav.vue'

export default Vue.extend({
  components: {
    Nav
  }
})
</script>

<style lang="scss">
@import '~/assets/scss/display.scss';

:root {
  --soft-green: #6ace89;
  --black: #000000;
  --soft-blue: #5e72e4;
  --white: #ffffff;
  --black-16: rgba(0, 0, 0, 0.16);
  --denim-blue: #3b4ba8;
  --aqua-blue: #11cdef;
  --robin-egg-blue: #8eeeff;
  --red-pink: #f5365c;
}

html {
  font-family: 'Source Sans Pro', -apple-system, BlinkMacSystemFont, 'Segoe UI',
    Roboto, 'Helvetica Neue', Arial, sans-serif;
  font-size: 16px;
  word-spacing: 1px;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
}

*,
*:before,
*:after {
  box-sizing: border-box;
  margin: 0;
}

.button--green {
  display: inline-block;
  border-radius: 4px;
  border: 1px solid #3b8070;
  color: #3b8070;
  text-decoration: none;
  padding: 10px 30px;
}

.button--green:hover {
  color: #fff;
  background-color: #3b8070;
}

.button--grey {
  display: inline-block;
  border-radius: 4px;
  border: 1px solid #35495e;
  color: #35495e;
  text-decoration: none;
  padding: 10px 30px;
  margin-left: 15px;
}

.button--grey:hover {
  color: #fff;
  background-color: #35495e;
}
</style>
