<template>
  <nav class="nav">
    <nuxt-link to="/">
      <picture>
          <!-- <source media="(min-width:465px)" srcset="img_white_flower.jpg"> -->
          <img src="~/assets/img/logo.png" alt="My Logo, a tree inside a circle" class="logo">
      </picture>
    </nuxt-link>
    <div class="links">
      <nuxt-link to="/" class="text" exact-active-class="active">
        Home
      </nuxt-link>
      <nuxt-link to="/about" class="text" exact-active-class="active">
        About Me
      </nuxt-link>
      <nuxt-link to="/portfolio" class="text" exact-active-class="active">
        My Portfolio
      </nuxt-link>
      <nuxt-link to="/recomendations" class="text" exact-active-class="active">
        Recomendations
      </nuxt-link>
      <nuxt-link to="/contact" class="button">
        Contact Me
      </nuxt-link>
    </div>
  </nav>
</template>

<style lang="scss" scoped>

.nav {
  height: 120px;
  width: 100%;
  display: flex;
  flex-direction: row;
  align-items: center;
  padding: 0 10%;
  justify-content: space-between;

  .logo {
    height: 100px;
  }

  .links {
    display: flex;
    flex-direction: row;
    align-items: center;
    width: 60%;
    justify-content: space-between;

    .text {
      // width: 97px;
      height: 30px;
      // font-family: FuturaHvBT;
      font-size: 22px;
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
            content: "";
              display: block;
              position: absolute;
              bottom: -17px;
              width: 100%;
              height: 1.5px;
              background-color: #11cdef;
          }
      }
    }

    .button {
      width: 214px;
      height: 50px;
      border-radius: 10px;
      background-image: linear-gradient(to left, #8eeeff, #11cdef);
      text-decoration: none;
      line-height: 50px;
      font-size: 22px;
      font-weight: 900;
      font-stretch: normal;
      font-style: normal;
      // line-height: 1.36;
      letter-spacing: normal;
      text-align: center;
      color: white;
      box-shadow: 5px 10px 10px 0 var(--black-16);
    }
  }
}

</style>
