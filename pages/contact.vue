<template>
  <div class="container column center">
    <picture>
      <img src="~/assets/img/svg/Polygon 16.svg" alt="background image" class="polygon triangle">
    </picture>
    <picture>
      <img src="~/assets/img/svg/Path 15.svg" alt="background image" class="polygon gray top">
    </picture>
    <picture>
      <img src="~/assets/img/svg/Path 15.svg" alt="background image" class="polygon middle">
    </picture>
    <picture>
      <img src="~/assets/img/svg/Path 15.svg" alt="background image" class="polygon gray bottom">
    </picture>
    <h1 class="title">
      Contact Me
    </h1>
    <h2 class="subtitle">
      Turn Your Ideas into Reality with me
      <br>
      Feel free to Contact me any time
    </h2>
    <div class="content row space-around">
      <form action="" class="form column end">
        <input
          class="input"
          type='text'
          name='name'
          tabindex="3"
          placeholder="Full Name"
          required
          v-model="name">
        <input
          class="input"
          type='email'
          name='email'
          tabindex="3"
          placeholder="Email"
          required
          v-model="email">
        <textarea
          class="textarea"
          type='text'
          name='message'
          tabindex="3"
          required
          placeholder="Tell me how can I help you"
          v-model="message"></textarea>
        <button
          class="button"
          type='submit'
          id="contact-submit"
          name="submit"
          @click.stop.prevent="sendEmail()">
          Send Now
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
        <a href="https://www.linkedin.com/in/rodrigo-manuel-navarro-lajous/" class="link row middle" target="_blank">
          <picture>
            <img src="~/assets/img/linkedin-color.png" alt="My Logo, a tree inside a circle" class="logo">
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

export default {
  name: 'Contact',
  data() {
    return {
      name: '',
      email: '',
      message: ''
    }
  },
  methods: {
    track() {
      page('/contact')
    },
    async sendEmail() {
      const { name, surname, email, message } = this
      const ok = await await this.$axios.$post(
        `${process.env.MAIL}/sendMail?name=${name}&email=${email}&message=${message}`
      )
      if ( ok === 'Sended') {
        this.$modal.show('Success')
      }
      else {
        this.$modal.show('Error')
      }
      // console.log(this.$modal)
    }
  },
  head() {
    return {
      title: 'Contact',
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
.container {
  position: relative;
  overflow: hidden;

  .polygon {
    position: absolute;

    &.triangle {
      bottom: -17rem;
      left: -22rem;
      height: 45rem;
    }

    &.top {
      top: 11rem;
      right: 3rem;
    }

    &.middle {
      bottom: 29rem;
      right: 8rem;
      height: 6rem;
    }

    &.bottom {
      bottom: 13rem;
      right: 2rem;
    }

    &.gray {
      height: 6.25rem;
    }
  }
  .title {
    height: 10rem;
    opacity: 0.08;
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

  .subtitle {
    position: relative;
    // width: 1126px;
    height: 10rem;
    // font-family: Futura;
    font-size: 2rem;
    font-weight: bold;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.34;
    letter-spacing: normal;
    text-align: center;
    color: var(--black);
  }

  .content {
    width: 100%;
    margin-bottom: 10%;

    .form {
      width: 35%;

      .input {
        width: 100%;
        height: 5.3rem;
        border-radius: 10px;
        border: solid 0.3px #707070;
        background-color: var(--white);
        padding-left: 1.5rem;
        // font-family: FuturaLtBT;
        font-size: 1.6rem;
        font-weight: 300;
        font-stretch: normal;
        font-style: normal;
        line-height: 5.3rem;
        letter-spacing: normal;
        text-align: left;
        color: var(--black);
        margin-bottom: 1.25rem;
      }

      .textarea {
        padding: 1.5rem;
        width: 100%;
        height: 12rem;
        border-radius: 10px;
        border: solid 0.3px #707070;
        background-color: var(--white);
        // font-family: FuturaLtBT;
        font-size: 1.6rem;
        font-weight: 300;
        font-stretch: normal;
        font-style: normal;
        line-height: 1.32;
        letter-spacing: normal;
        text-align: left;
        color: var(--black);
        margin-bottom: 2.5rem;
      }

      .button {
        width: 45%;
        height: 4rem;
        border-radius: 10px;
        background-color: var(--red-pink);
        border: none;
        // font-family: FuturaHvBT;
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
        // width: 657px;
        height: 3.3rem;
        // font-family: Futura;
        font-size: 2.5rem;
        font-weight: bold;
        font-stretch: normal;
        font-style: normal;
        line-height: 1.33;
        letter-spacing: normal;
        text-align: left;
        color: var(--black);
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
          // font-family: FuturaLtBT;
          font-size: 1.8rem;
          font-weight: 300;
          font-stretch: normal;
          font-style: normal;
          line-height: 1.33;
          letter-spacing: normal;
          text-align: left;
          color: var(--black);
        }
      }
    }
  }


}
</style>
