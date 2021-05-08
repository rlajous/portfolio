<template>
  <div class="content column center">
    <h1 class="header">
      My Protfolio
    </h1>
    <div class="section relative">
      <h2 class="title">
        Freelance
      </h2>
      <picture>
        <source srcset="~/assets/img/Polygon_6.webp" type="image/webp" />
        <img
          src="~/assets/img/Polygon_6.png"
          alt="Portait of myself"
          class="absolute background"
        />
      </picture>
      <div class="projects row wrap space-between">
        <div class="project column">
          <picture>
            <source srcset="~/assets/img/weareseeders.webp" type="image/webp" />
            <img
              src="~/assets/img/weareseeders.jpeg"
              alt="Portait of myself"
              class="image"
            />
          </picture>
          <div class="row middle data space-between">
            <div class="column">
              <div class="name">
                Seeds Landing Page
              </div>
              <div class="description">
                5 section website development in Vue.js
              </div>
            </div>
            <a
              href="https://weareseeders.navarrolajous.com/"
              class="button"
              target="_blank"
              rel="nofollow noreferrer noopener"
            >
              Explore
            </a>
          </div>
        </div>
        <div class="project column">
          <picture>
            <source srcset="~/assets/img/bepanthene.webp" type="image/webp" />
            <img
              src="~/assets/img/bepanthene.jpeg"
              alt="Portait of myself"
              class="image"
            />
          </picture>
          <div class="row middle data space-between">
            <div class="column">
              <div class="name">
                Bepanthene
              </div>
              <div class="description">
                Website layout update in Vue.js
              </div>
            </div>
            <a
              href="http://bepanthene.navarrolajous.com/"
              class="button"
              target="_blank"
              rel="nofollow noreferrer noopener"
            >
              Explore
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="section relative">
      <h2 class="title">
        Games
      </h2>
      <picture>
        <source srcset="~/assets/img/Polygon_6.webp" type="image/webp" />
        <img
          src="~/assets/img/Polygon_6.png"
          alt="Portait of myself"
          class="absolute background"
        />
      </picture>
      <div class="projects row wrap space-between">
        <div class="project column">
          <picture>
            <source srcset="~/assets/img/funnis.webp" type="image/webp" />
            <img
              src="~/assets/img/funnis.jpeg"
              alt="Portait of myself"
              class="image"
            />
          </picture>
          <div class="row middle data space-between">
            <div class="column">
              <div class="name">
                Funnis
              </div>
              <div class="description">
                Game for 1 or more players about Football-tennis developed in
                Unity
              </div>
            </div>
            <a
              href="https://funnis.navarrolajous.com/"
              class="button"
              target="_blank"
              rel="nofollow noreferrer noopener"
            >
              Explore
            </a>
          </div>
        </div>
      </div>
    </div>
    <a
      class="more-experience relative"
      href="https://github.com/rlajous"
      target="_blank"
      rel="nofollow noreferrer noopener"
    >
      <picture>
        <source srcset="~/assets/img/Polygon_6.webp" type="image/webp" />
        <img
          src="~/assets/img/Polygon_6.png"
          alt="Portait of myself"
          class="absolute background"
        />
      </picture>
      <div class="text">
        See my projects also on
      </div>
      <picture>
        <source
          srcset="~/assets/img/icons8_GitHub_96px@3x.webp"
          type="image/webp"
        />
        <img
          src="~/assets/img/icons8_GitHub_96px@3x.png"
          alt="Portait of myself"
          class="icon"
        />
      </picture>
      <div class="text">
        https://github.com/rlajous
      </div>
    </a>
  </div>
</template>

<script>
import { page } from 'vue-analytics'

export default {
  name: 'Portfolio',
  methods: {
    track() {
      page('/porfolio')
    },
  },
  head() {
    return {
      title: 'Portfolio',
      meta: [
        // hid is used as unique identifier. Do not use `vmid` for it as it will not work
        {
          hid: 'description',
          name: 'description',
          content: '',
        },
        {
          hid: 'keywords',
          name: 'keywords',
          content: '',
        },
        {
          hid: 'title',
          name: 'title',
          content: '',
        },
        {
          hid: 'og:type',
          property: 'og:type',
          content: '',
        },
        {
          hid: 'og:site_name',
          property: 'og:site_name',
          content: '',
        },
        {
          hid: 'og:url',
          property: 'og:url',
          content: '',
        },
        {
          hid: 'og:title',
          property: 'og:title',
          content: '',
        },
        {
          hid: 'og:description',
          property: 'og:description',
          content: '',
        },
        {
          hid: 'og:image',
          property: 'og:image',
          content: '',
        },
        {
          hid: 'twitter:card',
          property: 'twitter:card',
          content: 'summary_large_image',
        },
        {
          hid: 'twitter:url',
          property: 'twitter:url',
          content: '',
        },
        {
          hid: 'twitter:title',
          property: 'twitter:title',
          content: '',
        },
        {
          hid: 'twitter:description',
          property: 'twitter:description',
          content: '',
        },
        {
          hid: 'twitter:image',
          property: 'twitter:image',
          content: '',
        },
      ],
    }
  },
}
</script>

<style lang="scss" scoped>
.content {
  .header {
    opacity: 0.4;
    font-family: Impact;
    font-size: 8.5rem;
    font-weight: normal;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.22;
    letter-spacing: normal;
    text-align: left;
    color: var(--color-primary);
    margin-bottom: 12.25rem;
    margin-top: 3rem;
  }

  .section {
    width: 90%;
    margin-bottom: 18rem;

    .title {
      font-size: 3rem;
      font-weight: bold;
      font-stretch: normal;
      font-style: normal;
      line-height: 1.34;
      letter-spacing: normal;
      text-align: left;
      color: var(--text-color);
      margin-left: 1rem;
      margin-bottom: 5rem;
    }

    .background {
      transform: rotate(-6deg);
      top: -31rem;
      left: -36rem;
      height: 72rem;
      z-index: -1;
    }

    .projects {
      .project {
        flex-basis: 40%;
        flex-grow: 1;
        height: fit-content;
        border-radius: 2.5rem;
        box-shadow: 0 3px 15px 0 var(--black-16);
        background-color: var(--white);
        min-width: 53rem;
        margin: 0 1rem;
        margin-bottom: 2rem;

        .image {
          width: 100%;
          object-fit: cover;
          border-radius: 2.5rem 2.5rem 0 0;
        }

        .data {
          padding-left: 2.5rem;
          padding-right: 1.25rem;
          height: 100%;

          .name {
            margin-top: 2.8rem;
            font-size: 2.8rem;
            font-weight: bold;
            font-stretch: normal;
            font-style: normal;
            line-height: 1.71;
            letter-spacing: normal;
            text-align: left;
            color: var(--black);
            margin-bottom: 1.25rem;
          }

          .description {
            font-family: 'Futura Lt BT';
            font-size: 2rem;
            font-weight: 300;
            font-stretch: normal;
            font-style: normal;
            line-height: 1.35;
            letter-spacing: normal;
            text-align: left;
            color: var(--black);
            margin-bottom: 2.8rem;
          }

          .button {
            width: 13.2rem;
            height: 4rem;
            border-radius: 1.25rem;
            background-color: var(--color-primary);
            font-family: 'Futura Hv BT';
            font-size: 2rem;
            font-weight: 900;
            font-stretch: normal;
            font-style: normal;
            line-height: 4rem;
            letter-spacing: normal;
            text-align: center;
            color: var(--white);
            text-decoration: none;
          }
        }
      }
    }
  }

  .more-experience {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    width: 47rem;
    height: 28rem;
    border-radius: 4.4rem;
    box-shadow: 0 3px 20px 0 var(--black-16);
    background-color: var(--white);
    text-decoration: none;
    margin-bottom: 23rem;

    .background {
      transform: rotate(7deg);
      top: -27rem;
      left: 0rem;
      height: 72rem;
      z-index: -1;
    }

    .text {
      font-size: 2rem;
      font-weight: bold;
      font-stretch: normal;
      font-style: normal;
      line-height: 1.34;
      letter-spacing: normal;
      text-align: center;
      color: var(--black);
    }

    .icon {
      width: 6rem;
      margin: 3rem 0;
    }
  }
}

@media (max-width: 460px) {
  .content {
    .header {
      font-size: 4rem;
      margin-bottom: 5.7rem;
      margin-top: 1.5rem;
    }

    .section {
      width: 80%;
      margin-bottom: 8rem;

      .title {
        font-size: 2.5rem;
        margin-bottom: 2.3rem;
      }

      .background {
        top: -20rem;
        left: -34rem;
        height: 57rem;
      }

      .projects {
        .project {
          flex-basis: 100%;
          border-radius: 2.5rem;
          min-width: 22rem;
          margin-bottom: 2rem;

          .data {
            padding-left: 2.5rem;
            padding-right: 1.25rem;

            .name {
              margin-top: 0.3rem;
              font-size: 1rem;
              margin-bottom: 0.4rem;
            }

            .description {
              font-size: 0.8rem;
              margin-bottom: 0.6rem;
            }

            .button {
              width: 5rem;
              height: 2rem;
              border-radius: 1.5rem;
              font-size: 0.8rem;
              line-height: 2rem;
            }
          }
        }
      }
    }

    .more-experience {
      width: 21rem;
      height: 13.6rem;
      border-radius: 2rem;
      margin-bottom: 11rem;

      .background {
        transform: rotate(5deg);
        top: -13rem;
        left: -2rem;
        height: 35rem;
      }

      .text {
        font-size: 1.1rem;
      }

      .icon {
        width: 4rem;
        margin: 1rem 0;
      }
    }
  }
}
</style>
