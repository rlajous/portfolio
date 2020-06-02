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

<script>
import { page } from 'vue-analytics'

export default {
  name: 'Home',
  methods: {
    track() {
      page('/')
    }
  },
  head() {
    return {
      title: 'Navarro Lajous',
      meta: [
        // hid is used as unique identifier. Do not use `vmid` for it as it will not work
        {
          hid: 'description',
          name: 'description',
          content: ''
        },
        {
          hid: 'keywords',
          name: 'keywords',
          content:
            ''
        },
        {
          hid: 'title',
          name: 'title',
          content: ''
        },
        {
          hid: 'og:type',
          property: 'og:type',
          content: ''
        },
        {
          hid: 'og:site_name',
          property: 'og:site_name',
          content: ''
        },
        {
          hid: 'og:url',
          property: 'og:url',
          content: ''
        },
        {
          hid: 'og:title',
          property: 'og:title',
          content: ''
        },
        {
          hid: 'og:description',
          property: 'og:description',
          content: ''
        },
        {
          hid: 'og:image',
          property: 'og:image',
          content: ''
        },
        {
          hid: 'twitter:card',
          property: 'twitter:card',
          content: 'summary_large_image'
        },
        {
          hid: 'twitter:url',
          property: 'twitter:url',
          content: ''
        },
        {
          hid: 'twitter:title',
          property: 'twitter:title',
          content: ''
        },
        {
          hid: 'twitter:description',
          property: 'twitter:description',
          content: ''
        },
        {
          hid: 'twitter:image',
          property: 'twitter:image',
          content: ''
        }
      ]
    }
  }
}
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
    // width: 546px;
    // height: 122px;
    // font-family: Futura XBlk BT;
    font-size: 4.3rem;
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
    height: 2.5rem;
    font-family: Futura Lt BT;
    font-size: 1.8rem;
    font-weight: 300;
    font-stretch: normal;
    font-style: normal;
    line-height: 2.5rem;
    letter-spacing: normal;
    text-align: left;
    color: var(--black);
    margin-bottom: 5.6rem;
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
      font-size: 8.5rem;
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
      font-size: 2.5rem;
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
      font-size: 1.5rem;
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
