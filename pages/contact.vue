<template>
  <div class="container column center">
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
        `https://us-central1-contacto-landing.cloudfunctions.net/sendMail?name=${name}&email=${email}&message=${message}`
      )
      if ( ok === 'Sended') {
        // show a message sended
      }
    }
  },
  head() {
    return {
      title: 'Contacto',
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
  .title {
    // width: 626px;
    height: 166px;
    opacity: 0.08;
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

  .subtitle {
    position: relative;
    top: -65px;
    // width: 1126px;
    height: 156px;
    // font-family: Futura;
    font-size: 32px;
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
      width: 674px;

      .input {
        width: 100%;
        height: 85px;
        border-radius: 10px;
        border: solid 0.3px #707070;
        background-color: var(--white);
        padding-left: 24px;
        // font-family: FuturaLtBT;
        font-size: 25px;
        font-weight: 300;
        font-stretch: normal;
        font-style: normal;
        line-height: 85px;
        letter-spacing: normal;
        text-align: left;
        color: var(--black);
        margin-bottom: 20px;
      }

      .textarea {
        padding: 24px;
        width: 100%;
        height: 197px;
        border-radius: 10px;
        border: solid 0.3px #707070;
        background-color: var(--white);
        // font-family: FuturaLtBT;
        font-size: 25px;
        font-weight: 300;
        font-stretch: normal;
        font-style: normal;
        line-height: 1.32;
        letter-spacing: normal;
        text-align: left;
        color: var(--black);
        margin-bottom: 40px;
      }

      .button {
        width: 306px;
        height: 66px;
        border-radius: 10px;
        background-color: var(--red-pink);
        border: none;
        // font-family: FuturaHvBT;
        font-size: 25px;
        font-weight: 900;
        font-stretch: normal;
        font-style: normal;
        line-height: 66px;
        letter-spacing: normal;
        text-align: center;
        color: var(--white);
      }
    }

    .info {
      .info-title {
        // width: 657px;
        height: 53px;
        // font-family: Futura;
        font-size: 40px;
        font-weight: bold;
        font-stretch: normal;
        font-style: normal;
        line-height: 1.33;
        letter-spacing: normal;
        text-align: left;
        color: var(--black);
        margin-bottom: 40px;
      }

      .link {
        margin-bottom: 30px;
        text-decoration: none;

        .logo {
          width: 50px;
          height: 50px;
          object-fit: contain;
        }

        .text {
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
        }
      }
    }
  }


}
</style>
