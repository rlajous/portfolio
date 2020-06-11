<template>
  <div>
    <Nav />
    <nuxt />
    <Error />
    <Success />
  </div>
</template>

<script>
import Vue from 'vue'
import Nav from '~/components/Nav.vue'
import Error from '~/components/modals/Error.vue'
import Success from '~/components/modals/Success.vue'

export default Vue.extend({
  components: {
    Nav,
    Success,
    Error
  }
})
</script>

<style lang="scss">
@import '~/assets/scss/display.scss';
@import '~/assets/fonts/stylesheet.css';
@import '~/assets/fonts/impact/stylesheet.css';

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
  --pale-grey: #f3f4fb;
}

html {
  font-family: 'Futura', sans-serif;
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

html {
  font-size: 0.8vw;
}
</style>
