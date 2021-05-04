<template>
  <nav class="nav-container row space-between middle">
    <div class="desktop nav">
      <nuxt-link to="/">
        <Logo />
      </nuxt-link>
      <div class="links">
        <nuxt-link to="/" class="text" exact-active-class="active">
          Home
        </nuxt-link>
        <nuxt-link to="/about" class="text" exact-active-class="active">
          About Me
        </nuxt-link>
        <!-- <nuxt-link to="/portfolio" class="text" exact-active-class="active">
          My Portfolio
        </nuxt-link>
        <nuxt-link
          to="/recomendations"
          class="text"
          exact-active-class="active"
        >
          Recomendations
        </nuxt-link> -->
        <nuxt-link to="/contact" class="button">
          Contact Me
        </nuxt-link>
        <label class="switch">
          <input
            type="checkbox"
            :checked="$colorMode.preference === 'dark'"
            @click="togleMode"
          />
          <span
            class="slider round"
            :class="[
              $colorMode.preference === 'dark' ? 'dark-mode' : 'light-mode',
            ]"
          ></span>
        </label>
      </div>
    </div>
    <no-ssr>
      <nuxt-link to="/" class="responsive">
        <picture>
          <!-- <source media="(min-width:465px)" srcset="img_white_flower.jpg"> -->
          <source srcset="~/assets/img/logo.webp" type="image/webp" />
          <img
            src="~/assets/img/logo.png"
            alt="My Logo, a tree inside a circle"
            class="logo"
          />
        </picture>
      </nuxt-link>
      <SlideMenu
        :close-on-navigation="true"
        no-overlay
        right
        class="mobile"
        :cross-icon="false"
      >
        <div class="links">
          <nuxt-link to="/" class="text" exact-active-class="active">
            Home
          </nuxt-link>
          <nuxt-link to="/about" class="text" exact-active-class="active">
            About Me
          </nuxt-link>
          <!-- <nuxt-link to="/portfolio" class="text" exact-active-class="active">
            My Portfolio
          </nuxt-link>
          <nuxt-link
            to="/recomendations"
            class="text"
            exact-active-class="active"
          >
            Recomendations
          </nuxt-link> -->
          <nuxt-link to="/contact" class="button">
            Contact Me
          </nuxt-link>
          <label class="switch">
            <input type="checkbox" @click="togleMode" />
            <span
              class="slider round"
              :class="[nightMode ? 'dark-mode' : 'light-mode']"
            ></span>
          </label>
        </div>
      </SlideMenu>
    </no-ssr>
  </nav>
</template>

<script>
import Logo from '~/components/Logo.vue'

export default {
  name: 'Navbar',
  components: {
    Logo,
  },
  data() {
    return {
      colors: ['light', 'dark'],
      nightMode: this.$colorMode.preference === 'dark',
    }
  },
  methods: {
    getClasses(color) {
      // Does not set classes on ssr when preference is system (because we don't know the preference until client-side)
      if (this.$colorMode.unknown) {
        return {}
      }
      return {
        preferred: color === this.$colorMode.preference,
        selected: color === this.$colorMode.value,
      }
    },
    togleMode() {
      this.nightMode = !this.nightMode
      if (this.nightMode) {
        this.$colorMode.preference = 'dark'
      } else {
        this.$colorMode.preference = ''
      }
    },
  },
}
</script>

<style lang="scss" scoped>
.mobile {
  display: none;
}

.responsive {
  display: none;
}

.switch {
  position: relative;
  display: inline-block;
  width: 5.5rem;
  height: 3.1rem;
  //width: 60px;
  //height: 34px;
}

.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: var(--color-primary);
  -webkit-transition: 0.4s;
  transition: 0.4s;

  &::before {
    content: ' ';
    position: absolute;
    display: flex;
    height: 2.3rem;
    width: 2.3rem;
    align-items: center;
    display: flex;
    justify-content: center;
    line-height: 1.3rem;
    font-size: 1.3rem;
    text-align: center;
    padding: auto;
    left: 0.36rem;
    bottom: 0.36rem;
    background-color: white;
    -webkit-transition: 0.4s;
    transition: 0.4s;
  }

  &.dark-mode {
    &::before {
      content: '🌛';
    }
  }

  &.light-mode {
    &::before {
      content: '☀️';
    }
  }
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196f3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(2.3rem);
  -ms-transform: translateX(2.3rem);
  transform: translateX(2.3rem);
}

/* Rounded sliders */
.slider.round {
  border-radius: 3.1rem;
}

.slider.round:before {
  border-radius: 50%;
}

.nav {
  z-index: 9;
  height: 7.5rem;
  width: 100%;
  display: flex;
  flex-direction: row;
  align-items: center;
  padding: 0 10%;
  justify-content: space-between;

  .logo {
    height: 4.5rem;

    path {
      stroke: var(--text-color) !important;
      fill: var(--text-color) !important;
    }
  }

  .links {
    display: flex;
    flex-direction: row;
    align-items: center;
    width: 35%;
    justify-content: space-between;

    .text {
      height: 1.9rem;
      font-family: 'Futura Hv BT';
      font-size: 1.4rem;
      font-weight: 900;
      font-stretch: normal;
      font-style: normal;
      line-height: 1.36;
      letter-spacing: normal;
      text-align: left;
      color: var(--text-color);
      text-decoration: none;

      &.active {
        color: var(--color-primary);
        position: relative;

        &::after {
          content: '';
          display: block;
          position: absolute;
          bottom: -1rem;
          width: 100%;
          height: 3px;
          background-color: var(--color-primary);
        }
      }
    }

    .button {
      width: 13rem;
      height: 3.1rem;
      border-radius: 0.6rem;
      font-family: 'Futura Hv BT';
      background-image: linear-gradient(
        to left,
        var(--color-primary-light),
        var(--color-primary)
      );
      text-decoration: none;
      line-height: 3.1rem;
      font-size: 1.3rem;
      font-weight: 900;
      font-stretch: normal;
      font-style: normal;
      letter-spacing: normal;
      text-align: center;
      color: var(--white);
      box-shadow: 0.3rem 0.6rem 0.6rem 0 var(--black-16);
    }
  }
}

@media (max-width: 460px) {
  .mobile {
    display: flex;
    flex-direction: column;
    background-color: var(--bg);

    .links {
      display: flex;
      flex-direction: column;
      align-items: flex-start;
      width: 100%;
      justify-content: space-between;

      .text {
        height: 1.9rem;
        font-family: 'Futura Hv BT';
        font-size: 1.4rem;
        font-weight: 900;
        font-stretch: normal;
        font-style: normal;
        line-height: 1.36;
        letter-spacing: normal;
        text-align: left;
        color: var(--text-color);
        text-decoration: none;
        margin-bottom: 2.3rem;

        &.active {
          color: var(--color-primary);
          position: relative;

          &::after {
            content: '';
            display: block;
            position: absolute;
            bottom: -1rem;
            width: 100%;
            height: 3px;
            background-color: var(--color-primary);
          }
        }
      }

      .button {
        width: 13rem;
        height: 3.1rem;
        border-radius: 0.6rem;
        font-family: 'Futura Hv BT';
        background-image: linear-gradient(
          to left,
          var(--color-primary-light),
          var(--color-primary)
        );
        text-decoration: none;
        line-height: 3.1rem;
        font-size: 1.3rem;
        font-weight: 900;
        font-stretch: normal;
        font-style: normal;
        letter-spacing: normal;
        text-align: center;
        color: var(--white);
        box-shadow: 0.3rem 0.6rem 0.6rem 0 var(--black-16);
        margin-bottom: 2.3rem;
      }
    }
  }

  .desktop {
    display: none;
  }

  .responsive {
    display: inherit;
  }

  .nav-container {
    width: 100%;
    height: 110px;

    .logo {
      position: absolute;
      top: 16.6px;
      left: 5%;
      height: 68.75px;
    }
  }
}
</style>

<style lang="scss">
.bm-menu {
  background-color: var(--bg) !important;
  box-shadow: 0 3px 6px 0 var(--black-16);
  max-width: 66vw;
}
</style>
