<template>
  <div class="container column center">
    <picture>
      <img
        src="~/assets/img/svg/Polygon 16.svg"
        alt="background image"
        class="polygon triangle"
      />
    </picture>
    <picture>
      <img
        src="~/assets/img/svg/Path 40.svg"
        alt="background image"
        class="polygon gray top"
      />
    </picture>
    <picture>
      <img
        src="~/assets/img/svg/Path 15.svg"
        alt="background image"
        class="polygon middle"
      />
    </picture>
    <picture>
      <img
        src="~/assets/img/svg/Path 40.svg"
        alt="background image"
        class="polygon gray bottom"
      />
    </picture>
    <div class="relative">
      <h1 class="title">
        Contact Me
      </h1>
      <h2 class="subtitle absolute">
        Turn Your Ideas into Reality with me
        <br />
        Feel free to Contact me any time
      </h2>
    </div>
    <div class="content row space-evenly">
      <form action="" class="form column end" @submit.prevent="sendEmail()">
        <input
          v-model="name"
          class="input"
          type="text"
          name="name"
          tabindex="0"
          placeholder="Full Name"
          required
        />
        <input
          v-model="email"
          class="input"
          type="email"
          name="email"
          tabindex="0"
          placeholder="Email"
          required
        />
        <textarea
          v-model="message"
          class="textarea"
          type="text"
          name="message"
          tabindex="0"
          required
          placeholder="Tell me how can I help you"
        ></textarea>
        <button
          id="contact-submit"
          class="button"
          type="submit"
          name="submit"
          tabindex="0"
        >
          <Loader v-if="loading" />
          <span v-else>
            Send Now
          </span>
        </button>
      </form>
      <div class="info column">
        <p class="info-title">
          You Can also Send Me Message Via
        </p>
        <!-- <a href="" class="link">
          <picture>
            <img src="~/assets/img/github-color.png" alt="My Logo, a tree inside a circle" class="logo">
          </picture>
          <span class="text">
            /rlajous
          </span>
        </a> -->
        <a
          href="https://www.linkedin.com/in/rodrigo-manuel-navarro-lajous/"
          class="link row middle"
          target="_blank"
          rel="nofollow noreferrer noopener"
        >
          <picture>
            <img
              src="~/assets/img/linkedin-color.png"
              alt="My Logo, a tree inside a circle"
              class="logo"
            />
          </picture>
          <span class="text">
            /rodrigo-manuel-navarro-lajous
          </span>
        </a>
      </div>
    </div>
  </div>
</template>

<script>
import { page } from 'vue-analytics'
import Loader from '~/components/Loader.vue'

export default {
  name: 'Contact',
  components: {
    Loader,
  },
  data() {
    return {
      name: '',
      email: '',
      message: '',
      loading: false,
    }
  },
  methods: {
    track() {
      page('/contact')
    },
    async sendEmail() {
      const { name, email, message } = this
      this.loading = true
      const ok = await this.$axios.$post(
        `https://us-central1-contacto-landing.cloudfunctions.net/sendMail?name=${name}&email=${email}&message=${message}`
      )
      if (ok === 'Sended') {
        this.$modal.show('Success')
      } else {
        this.$modal.show('Error')
      }
      this.loading = false
    },
  },
  head() {
    return {
      title: 'Contact',
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
.container {
  position: relative;
  height: calc(100vh - 7.5rem);
  overflow: hidden;

  .polygon {
    position: absolute;

    &.triangle {
      bottom: -22rem;
      left: -22rem;
      height: 45rem;
    }

    &.top {
      top: 8rem;
      right: 4rem;
    }

    &.middle {
      bottom: 24rem;
      right: 11rem;
      height: 6rem;
    }

    &.bottom {
      bottom: 7rem;
      right: 4rem;
    }

    &.gray {
      height: 8.25rem;
    }
  }

  .title {
    height: 10rem;
    opacity: 0.5;
    font-family: 'Impact';
    font-size: 8.5rem;
    font-weight: normal;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.22;
    letter-spacing: normal;
    text-align: center;
    color: var(--color-primary);
  }

  .subtitle {
    position: relative;
    height: 8rem;
    font-size: 2rem;
    font-weight: bold;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.34;
    letter-spacing: normal;
    text-align: center;
    color: var(--text-color);
  }

  .content {
    width: 100%;

    .form {
      width: 35%;

      .input {
        width: 100%;
        height: 5.3rem;
        border-radius: 10px;
        border: solid 0.3px #707070;
        background-color: var(--white);
        padding-left: 1.5rem;
        font-family: 'Futura Lt BT';
        font-size: 1.6rem;
        font-weight: 300;
        font-stretch: normal;
        font-style: normal;
        line-height: 5.3rem;
        letter-spacing: normal;
        text-align: left;
        color: var(--black);
        margin-bottom: 1.25rem;

        &:focus {
          border: solid 1px var(--color-primary);
        }
      }

      .textarea {
        padding: 1.5rem;
        width: 100%;
        height: 12rem;
        border-radius: 10px;
        border: solid 0.3px #707070;
        background-color: var(--white);
        font-family: 'Futura Lt BT';
        font-size: 1.6rem;
        font-weight: 300;
        font-stretch: normal;
        font-style: normal;
        line-height: 1.32;
        letter-spacing: normal;
        text-align: left;
        color: var(--black);
        margin-bottom: 2.5rem;

        &:focus {
          border: solid 1px var(--color-primary);
        }
      }

      .button {
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
        width: 45%;
        height: 4rem;
        border-radius: 10px;
        background-color: var(--color-primary);
        border: none;
        font-family: 'Futura Hv BT';
        font-size: 1.6rem;
        font-weight: 900;
        font-stretch: normal;
        font-style: normal;
        line-height: 4rem;
        letter-spacing: normal;
        text-align: center;
        color: var(--white);
        box-shadow: 5px 10px 10px 0 var(--black-16);
      }
    }

    .info {
      .info-title {
        height: 3.3rem;
        font-size: 2.5rem;
        font-weight: bold;
        font-stretch: normal;
        font-style: normal;
        line-height: 1.33;
        letter-spacing: normal;
        text-align: left;
        color: var(--text-color);
        margin-bottom: 2.5rem;
      }

      .link {
        margin-bottom: 1.9rem;
        text-decoration: none;

        .logo {
          width: 3rem;
          height: 3rem;
          object-fit: contain;
        }

        .text {
          height: 2.5rem;
          font-family: 'Futura Lt BT';
          font-size: 1.8rem;
          font-weight: 300;
          font-stretch: normal;
          font-style: normal;
          line-height: 1.33;
          letter-spacing: normal;
          text-align: left;
          color: var(--text-color);
        }
      }
    }
  }
}

@media (max-width: 460px) {
  .container {
    min-height: calc(100vh - 110px);
    height: fit-content;

    .polygon {
      display: none;
    }

    .title {
      height: 3rem;
      font-size: 2.5rem;
      line-height: 1.22;
    }

    .subtitle {
      height: fit-content;
      font-size: 1.36rem;
      line-height: 1.34;
      text-align: center;
      margin: auto;
      width: 70%;
      margin-bottom: 3rem;
      top: 0;
    }

    .content {
      width: 100%;
      flex-direction: column;
      align-items: center;

      .form {
        width: 80%;
        margin-bottom: 3rem;

        .input {
          width: 100%;
          height: 2.8rem;
          border-radius: 10px;
          border: solid 0.3px #707070;
          background-color: var(--white);
          padding-left: 0.72rem;
          font-family: 'Futura Lt BT';
          font-size: 0.72rem;
          font-weight: 300;
          font-stretch: normal;
          font-style: normal;
          line-height: 2.8rem;
          letter-spacing: normal;
          text-align: left;
          color: var(--black);
          margin-bottom: 0.6rem;
        }

        .textarea {
          padding: 1.5rem;
          width: 100%;
          height: 6.45rem;
          resize: none;
          border-radius: 10px;
          border: solid 0.3px #707070;
          background-color: var(--white);
          font-family: 'Futura Lt BT';
          font-size: 0.72rem;
          font-weight: 300;
          font-stretch: normal;
          font-style: normal;
          line-height: 1.32;
          letter-spacing: normal;
          text-align: left;
          color: var(--black);
          margin-bottom: 1.36rem;
        }

        .button {
          width: 45%;
          height: 2rem;
          border-radius: 10px;
          font-size: 0.72rem;
          line-height: 2rem;
          box-shadow: 5px 10px 10px 0 var(--black-16);
        }
      }

      .info {
        .info-title {
          height: 1.8rem;
          font-size: 1.36rem;
          font-weight: bold;
          font-stretch: normal;
          font-style: normal;
          line-height: 1.33;
          letter-spacing: normal;
          text-align: left;
          color: var(--text-color);
          margin-bottom: 1.5rem;
        }

        .link {
          margin-bottom: 1.9rem;
          text-decoration: none;

          .logo {
            width: 1.72rem;
            height: 1.72rem;
            object-fit: contain;
            margin-right: 1rem;
          }

          .text {
            height: 1.36rem;
            font-family: 'Futura Lt BT';
            font-size: 1rem;
            font-weight: 300;
            font-stretch: normal;
            font-style: normal;
            line-height: 1.33;
            letter-spacing: normal;
            text-align: left;
            color: var(--text-color);
          }
        }
      }
    }
  }
}
</style>
