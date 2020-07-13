<template>
  <nav class="nav-container row space-between middle">
    <div class="desktop nav">
      <nuxt-link to="/">
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
        </div>
      </SlideMenu>
    </no-ssr>
  </nav>
</template>

<style lang="scss" scoped>
.mobile {
  display: none;
}

.responsive {
  display: none;
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
    height: 6.25rem;
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
      color: black;
      text-decoration: none;

      &.active {
        color: #11cdef;
        position: relative;

        &::after {
          content: '';
          display: block;
          position: absolute;
          bottom: -1rem;
          width: 100%;
          height: 3px;
          background-color: #11cdef;
        }
      }
    }

    .button {
      width: 13rem;
      height: 3.1rem;
      border-radius: 0.6rem;
      font-family: 'Futura Hv BT';
      background-image: linear-gradient(to left, #8eeeff, #11cdef);
      text-decoration: none;
      line-height: 3.1rem;
      font-size: 1.3rem;
      font-weight: 900;
      font-stretch: normal;
      font-style: normal;
      letter-spacing: normal;
      text-align: center;
      color: white;
      box-shadow: 0.3rem 0.6rem 0.6rem 0 var(--black-16);
    }
  }
}

@media (max-width: 460px) {
  .mobile {
    display: flex;
    flex-direction: column;
    background-color: white;

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
        color: black;
        text-decoration: none;
        margin-bottom: 2.3rem;

        &.active {
          color: #11cdef;
          position: relative;

          &::after {
            content: '';
            display: block;
            position: absolute;
            bottom: -1rem;
            width: 100%;
            height: 3px;
            background-color: #11cdef;
          }
        }
      }

      .button {
        width: 13rem;
        height: 3.1rem;
        border-radius: 0.6rem;
        font-family: 'Futura Hv BT';
        background-image: linear-gradient(to left, #8eeeff, #11cdef);
        text-decoration: none;
        line-height: 3.1rem;
        font-size: 1.3rem;
        font-weight: 900;
        font-stretch: normal;
        font-style: normal;
        letter-spacing: normal;
        text-align: center;
        color: white;
        box-shadow: 0.3rem 0.6rem 0.6rem 0 var(--black-16);
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
  background-color: white !important;
  box-shadow: 0 3px 6px 0 var(--black-16);
  max-width: 66vw;
}
</style>
