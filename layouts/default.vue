<template>
  <div>
    <Nav />
    <nuxt />
    <no-ssr>
      <Error />
      <Success />
    </no-ssr>
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
    Error,
  },
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
  --charcoal-grey: #323544;
  --dark: #222231;

  --color: #243746;
  --text-color: var(--black);
  --color-primary: var(--soft-blue);
  --color-primary-light: var(--denim-blue);
  --color-secondary: #0e2233;
  --card-bg: var(--white);
  --bg: var(--white);
  --bg-secondary: #fff;
  --border-color: #ddd;
}

.dark-mode {
  --color: #ebf4f1;
  --text-color: var(--white);
  --color-primary: var(--aqua-blue);
  --color-primary-light: var(--robin-egg-blue);
  --color-secondary: #fdf9f3;
  --card-bg: var(--dark);
  --bg: var(--charcoal-grey);
  --bg-secondary: #071521;
  --border-color: #0d2538;
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

body {
  background-color: var(--bg);
}

.bm-burger-bars {
  background-color: var(card-bg) !important;
}

.visible-hidden {
  clip: rect(1px, 1px, 1px, 1px);
  height: 1px;
  overflow: hidden;
  position: absolute;
  white-space: nowrap;
  width: 1px;
}

.visible-hidden:focus {
  clip: auto;
  height: auto;
  overflow: auto;
  position: absolute;
  width: auto;
}

@media (max-width: 460px) {
  html {
    font-size: 11px;
  }
}
</style>
