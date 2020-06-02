<template>
  <div class="container column center">
    <h2 class="title">
      About Me
    </h2>
    <h1 class="subtitle">
      I am passionate with scuba, I love my two dogs, I have been in a church that helps poor people, I love to draw. I am currently takin theatre impro classes. I love the beach. I currently live in Argentina and have Spanish passport. I work remotely
    </h1>
    <h2 class="title m-b-10">
      Skills
    </h2>
    <div class="row wrap">
      <div class="card column center">
        <div class="icon column">
          <picture class="image">
            <img src="~/assets/img/github-color.png" alt="Portait of myself" class="image">
          </picture>
        </div>
        <p class="name">
          nuxt JS
        </p>
        <hr class="divider">
        <p class="description">
          Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry
        </p>
        <p class="experience-title">
          Experiance
        </p>
        <p class="experience">
          7 month
        </p>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { page } from 'vue-analytics'

export default {
  name: 'About',
  methods: {
    track() {
      page('/about')
    }
  },
  head() {
    return {
      title: 'About Me',
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

.m-b-10 {
  margin-bottom: 100px;
}

.title {
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
  width: 60%;
  // font-family: FuturaBkBT;
  font-size: 2rem;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.34;
  letter-spacing: normal;
  text-align: center;
  color: var(--black);
}

.card {
  margin-bottom: 260px;
  width: 379px;
  height: 369px;
  border-radius: 10px;
  -webkit-backdrop-filter: blur(30px);
  backdrop-filter: blur(30px);
  box-shadow: 0 3px 15px 0 var(--black-16);
  background-color: var(--white);
  position: relative;

  .icon {
    width: 90px;
    height: 90px;
    box-shadow: 0 3px 15px 0 var(--black-16);
    background-color: var(--white);
    border-radius: 50%;
    position: absolute;
    top: -45px;

    .image {
      margin: auto;
      width: 60px;
      height: 60px;
      object-fit: contain;
    }
  }

  .name {
    margin-top: 80px;
    height: 27px;
    font-family: FuturaHvBT;
    font-size: 20px;
    font-weight: 900;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.35;
    letter-spacing: normal;
    text-align: center;
    color: var(--black);
  }

  .divider {
    margin-top: 22px;
    margin-bottom: 26px;
  }

  .description {
    width: 80%;
    height: 76px;
    font-family: FuturaBkBT;
    font-size: 16px;
    font-weight: normal;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.31;
    letter-spacing: normal;
    text-align: center;
    color: var(--black);
    margin-bottom: 60px;
  }

  .experience-title {
    height: 21px;
    opacity: 0.7;
    font-family: FuturaHvBT;
    font-size: 16px;
    font-weight: 900;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.31;
    letter-spacing: normal;
    text-align: left;
    color: var(--black);
    margin-bottom: 7px;
  }

  .experience {
    height: 27px;
    font-family: FuturaHvBT;
    font-size: 20px;
    font-weight: 900;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.35;
    letter-spacing: normal;
    text-align: left;
    color: var(--black);
    margin-bottom: 28px;
  }
}
</style>
