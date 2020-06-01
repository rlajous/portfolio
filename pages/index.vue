<template>
  <div class="content column">
    <picture>
      <img src="~/assets/img/portrait.png" alt="Portait of myself" class="portrait">
    </picture>
    <h1 class="title">
      Rodrigo Lajous
    </h1>
    <h2 class="subtitle">
      Full Stack Developer
    </h2>
    <div class="description">
      <span class="background">
        Hi
      </span>
      <h3 class="text">
        I am passionate with scuba, I love my two dogs, I have been in a church that helps poor people, I love to draw
      </h3>
    </div>
    <div class="buttons row space-between">
      <button class="button download">
        Download CV
      </button>
      <nuxt-link to="/contact" class="button hire">
        Hire Me
      </nuxt-link>
    </div>
    <div class="social row space-between">
      <a href="https://www.linkedin.com/in/rodrigo-manuel-navarro-lajous/" class="link row middle" target="_blank">
        <picture>
          <img src="~/assets/img/linkedin-color.png" alt="My Logo, a tree inside a circle" class="logo">
        </picture>
      </a>
      <a href="https://github.com/rlajous" class="link row middle" target="_blank">
        <picture>
          <img src="~/assets/img/github-color.png" alt="My Logo, a tree inside a circle" class="logo">
        </picture>
      </a>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  components: {
  }
})
</script>

<style lang="scss" scoped>
.content {
  position: relative;
  height: calc( 100vh - 120px);
  overflow: hidden;
  padding: 2.5% 10%;

  .portrait {
    position: absolute;
    bottom: -200px;
    right: -200px;
    width: 983px;
    height: 916.8px;
    object-fit: contain;
  }

  .title {
    position: relative;
    width: 546px;
    // height: 122px;
    // font-family: Futura;
    font-size: 70px;
    font-weight: bold;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.34;
    letter-spacing: normal;
    text-align: left;
    color: var(--soft-blue);
    margin-bottom: 70px;

    &::after {
      content: "";
        display: block;
        position: absolute;
        bottom: -20px;
        width: 36%;
        height: 5px;
        background-color: var(--soft-blue);
    }
  }

  .subtitle {
    // width: 258px;
    height: 40px;
    // font-family: FuturaLtBT;
    font-size: 30px;
    font-weight: 300;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.33;
    letter-spacing: normal;
    text-align: left;
    color: var(--black);
    margin-bottom: 90px;
  }

  .description {
    position: relative;

    .background {
      position: absolute;
      top: -80px;
      left: -10px;
      // width: 113px;
      height: 166px;
      opacity: 0.1;
      // font-family: Impact;
      font-size: 136px;
      font-weight: normal;
      font-stretch: normal;
      font-style: normal;
      line-height: 1.22;
      letter-spacing: normal;
      text-align: left;
      color: var(--black);
    }

    .text {
      width: 868px;
      height: 216px;
      // font-family: Futura;
      font-size: 40px;
      font-weight: bold;
      font-stretch: normal;
      font-style: normal;
      line-height: 1.33;
      letter-spacing: normal;
      text-align: left;
      color: var(--black);
    }
  }

  .buttons {
    width: 34%;

    .button {
      width: 48%;
      height: 66px;
      border-radius: 10px;
      box-shadow: 5px 10px 10px 0 var(--black-16);
      // font-family: FuturaHvBT;
      font-size: 25px;
      font-weight: 900;
      font-stretch: normal;
      font-style: normal;
      line-height: 66px;
      letter-spacing: normal;
      text-align: center;
      color: var(--white);
      text-decoration: none;
      border: none;

      &.hire {
        background-color: var(--soft-blue);
      }

      &.download {
        background-color: var(--red-pink);
      }
    }
  }

  .social {
    width: 110px;

    .link {
      text-decoration: none;
      margin-top: 60px;

      .logo {
        width: 40px;
        height: 40px;
        object-fit: contain;
      }
    }
  }
}
</style>
