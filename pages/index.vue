<template>
  <div class="content column">
    <picture>
      <source srcset="~/assets/img/portrait.webp" type="image/webp" />
      <img
        src="~/assets/img/portrait.png"
        alt="Portait of myself"
        class="portrait"
      />
    </picture>
    <picture>
      <!-- <source srcset="~/assets/img/portrait.webp" type="image/webp"> -->
      <img
        src="~/assets/img/svg/Polygon 7.svg"
        alt="background image"
        class="background-image"
      />
    </picture>
    <div class="relative">
      <h1 class="title">
        Rodrigo Lajous
      </h1>
      <picture>
        <!-- <source srcset="~/assets/img/portrait.webp" type="image/webp"> -->
        <svg
          xmlns="http://www.w3.org/2000/svg"
          class="absolute underline"
          viewBox="0 0 228 22"
        >
          <g id="Group_5" data-name="Group 5" transform="translate(-1644 -559)">
            <line
              id="Line_1"
              data-name="Line 1"
              x2="183"
              transform="translate(1646.5 570.5)"
              fill="none"
              stroke="#5e72e4"
              stroke-linecap="round"
              stroke-width="5"
            />
            <g id="Group_1" data-name="Group 1" transform="translate(247 57)">
              <g
                id="Ellipse_1"
                data-name="Ellipse 1"
                transform="translate(1603 502)"
                fill="none"
                stroke="#5e72e4"
                stroke-width="1"
              >
                <circle cx="11" cy="11" r="11" stroke="none" />
                <circle cx="11" cy="11" r="10.5" fill="none" />
              </g>
              <circle
                id="Ellipse_2"
                data-name="Ellipse 2"
                cx="7"
                cy="7"
                r="7"
                transform="translate(1607 506)"
                fill="#5e72e4"
              />
            </g>
          </g>
        </svg>
      </picture>
    </div>
    <h2 class="subtitle">
      Full Stack Developer
    </h2>
    <div class="description">
      <div class="background">
        Hi
      </div>
      <h3 class="text">
        I am passionate with scuba, I love my two dogs, I love to draw
      </h3>
    </div>
    <div class="buttons row space-between">
      <!-- <button class="button download">
        Download CV
      </button> -->
      <nuxt-link to="/contact" class="button hire">
        Hire Me
      </nuxt-link>
    </div>
    <div class="social row space-between">
      <a
        href="https://www.linkedin.com/in/rodrigo-manuel-navarro-lajous/"
        class="link row middle"
        target="_blank"
        rel="nofollow noreferrer noopener"
      >
        <picture>
          <source srcset="~/assets/img/linkedin-color.webp" type="image/webp" />
          <img
            src="~/assets/img/linkedin-color.png"
            alt="My Logo, a tree inside a circle"
            class="logo"
          />
        </picture>
      </a>
      <a
        href="https://github.com/rlajous"
        class="link row middle"
        target="_blank"
        rel="nofollow noreferrer noopener"
      >
        <picture>
          <source srcset="~/assets/img/github-color.webp" type="image/webp" />
          <img
            src="~/assets/img/github-color.png"
            alt="My Logo, a tree inside a circle"
            class="logo"
          />
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
    },
  },
  head() {
    return {
      title: 'Navarro Lajous',
      meta: [
        // hid is used as unique identifier. Do not use `vmid` for it as it will not work
        {
          hid: 'description',
          name: 'description',
          content: 'Turn Your Ideas into Reality with me',
        },
        {
          hid: 'keywords',
          name: 'keywords',
          content:
            'web, developer, fullstack, landing, portfolio, porfolio, scuba, programmer, engenieer, Rodrigo, rodrigo, navarro, lajous, manuel, Manuel, MANUEL, NAVARRO, LAJOUS, Lajous, Navarro, RODRIGO, MANUEL, Manuel',
        },
        {
          hid: 'title',
          name: 'title',
          content: 'Navarro Lajous',
        },
        {
          hid: 'og:type',
          property: 'og:type',
          content: 'website',
        },
        {
          hid: 'og:site_name',
          property: 'og:site_name',
          content: 'Navarro Lajous',
        },
        {
          hid: 'og:url',
          property: 'og:url',
          content: 'https://navarrolajous.com/',
        },
        {
          hid: 'og:title',
          property: 'og:title',
          content: 'Navarro Lajous',
        },
        {
          hid: 'og:description',
          property: 'og:description',
          content: 'Turn Your Ideas into Reality with me',
        },
        {
          hid: 'og:image',
          property: 'og:image',
          content: 'https://navarrolajous.com/share.jpg',
        },
        {
          hid: 'twitter:card',
          property: 'twitter:card',
          content: 'summary_large_image',
        },
        {
          hid: 'twitter:url',
          property: 'twitter:url',
          content: 'https://navarrolajous.com/',
        },
        {
          hid: 'twitter:title',
          property: 'twitter:title',
          content: 'Navarro Lajous',
        },
        {
          hid: 'twitter:description',
          property: 'twitter:description',
          content: 'Turn Your Ideas into Reality with me',
        },
        {
          hid: 'twitter:image',
          property: 'twitter:image',
          content: 'https://navarrolajous.com/share.jpg',
        },
      ],
    }
  },
}
</script>

<style lang="scss" scoped>
.content {
  position: relative;
  height: calc(100vh - 7.5rem);
  overflow: hidden;
  padding: 2.5% 10%;

  .background-image {
    position: absolute;
    bottom: -9.25rem;
    height: 32rem;
    left: -10.25rem;
    transform: rotate(31deg);
    z-index: -1;
  }

  .portrait {
    position: absolute;
    bottom: -12.5rem;
    right: -12.5rem;
    width: 61.5rem;
    height: 58rem;
    object-fit: contain;
  }

  .title {
    position: relative;
    font-size: 4.3rem;
    font-weight: bold;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.34;
    letter-spacing: normal;
    text-align: left;
    color: var(--color-primary);
    margin-bottom: 4.3rem;
  }

  .underline {
    bottom: 2rem;
    height: 1.5rem;

    line {
      stroke: var(--color-primary);
    }

    #Ellipse_1 {
      stroke: var(--color-primary);
    }

    #Ellipse_2 {
      fill: var(--color-primary);
    }
  }

  .subtitle {
    height: 2.5rem;
    font-family: 'Futura Lt BT';
    font-size: 1.8rem;
    font-weight: 300;
    font-stretch: normal;
    font-style: normal;
    line-height: 2.5rem;
    letter-spacing: normal;
    text-align: left;
    color: var(--text-color);
    margin-bottom: 0.6rem;
  }

  .description {
    position: relative;

    .background {
      height: 10.3rem;
      opacity: 0.5;
      font-family: 'Impact';
      font-size: 8rem;
      font-weight: normal;
      font-stretch: normal;
      font-style: normal;
      line-height: 1.22;
      letter-spacing: normal;
      text-align: left;
      color: var(--color-primary);
    }

    .text {
      width: 55%;
      height: 13.5rem;
      font-size: 2.5rem;
      font-weight: bold;
      font-stretch: normal;
      font-style: normal;
      line-height: 1.33;
      letter-spacing: normal;
      text-align: left;
      color: var(--text-color);
    }
  }

  .buttons {
    width: 34%;

    .button {
      width: 48%;
      height: 4rem;
      border-radius: 0.6rem;
      box-shadow: 0.3rem 0.6rem 0.6rem 0 var(--black-16);
      font-family: 'Futura Hv BT';
      font-size: 1.5rem;
      font-weight: 900;
      font-stretch: normal;
      font-style: normal;
      line-height: 4rem;
      letter-spacing: normal;
      text-align: center;
      color: var(--white);
      text-decoration: none;
      border: none;

      &.hire {
        background-color: var(--color-primary);
      }

      &.download {
        background-color: var(--red-pink);
      }
    }
  }

  .social {
    width: 7.5rem;

    .link {
      text-decoration: none;
      margin-top: 3.75rem;

      .logo {
        width: 2.5rem;
        height: 2.5rem;
        object-fit: contain;
      }
    }
  }
}

@media (max-width: 460px) {
  .content {
    position: relative;
    height: calc(100vh - 7.5rem);
    overflow: hidden;
    padding: 2.5% 10%;

    .background-image {
      position: absolute;
      bottom: -9.25rem;
      height: 35rem;
      left: -15.25rem;
      transform: rotate(31deg);
      z-index: -1;
    }

    .portrait {
      position: absolute;
      top: 4rem;
      right: -8.5rem;
      width: 23rem;
      height: 23rem;
      object-fit: contain;
    }

    .title {
      position: relative;
      font-size: 2.7rem;
      font-weight: bold;
      font-stretch: normal;
      font-style: normal;
      line-height: 1.34;
      letter-spacing: normal;
      text-align: left;
      color: var(--color-primary);
      margin-bottom: 4.3rem;
    }

    .underline {
      bottom: 2rem;
      height: 1.5rem;
      width: 50%;
    }

    .subtitle {
      height: 2.5rem;
      font-family: 'Futura Lt BT';
      font-size: 1.4rem;
      font-weight: 300;
      font-stretch: normal;
      font-style: normal;
      line-height: 2.5rem;
      letter-spacing: normal;
      text-align: left;
      color: var(--text-color);
      margin-bottom: 5.6rem;
    }

    .description {
      position: relative;

      .background {
        position: absolute;
        top: -3.4rem;
        left: -0.15rem;
        height: 5.5rem;
        opacity: 0.1;
        font-family: 'Impact';
        font-size: 4.3rem;
        font-weight: normal;
        font-stretch: normal;
        font-style: normal;
        line-height: 1.22;
        letter-spacing: normal;
        text-align: left;
        color: var(--text-color);
      }

      .text {
        width: 20rem;
        height: 5.5rem;
        font-size: 1rem;
        font-weight: bold;
        font-stretch: normal;
        font-style: normal;
        line-height: 1.33;
        letter-spacing: normal;
        text-align: left;
        color: var(--text-color);
      }
    }

    .buttons {
      width: 60%;
      display: flex;
      flex-direction: column;

      .button {
        width: 100%;
        height: 2.6rem;
        border-radius: 0.6rem;
        box-shadow: 0.3rem 0.6rem 0.6rem 0 var(--black-16);
        font-family: 'Futura Hv BT';
        font-size: 1rem;
        font-weight: 900;
        font-stretch: normal;
        font-style: normal;
        line-height: 2.6rem;
        letter-spacing: normal;
        text-align: center;
        color: var(--white);
        text-decoration: none;
        border: none;
        margin-bottom: 1rem;

        &.hire {
          background-color: var(--soft-blue);
        }

        &.download {
          background-color: var(--red-pink);
        }
      }
    }

    .social {
      width: 7.5rem;

      .link {
        text-decoration: none;
        margin-top: 0.75rem;

        .logo {
          width: 2.5rem;
          height: 2.5rem;
          object-fit: contain;
        }
      }
    }
  }
}
</style>
