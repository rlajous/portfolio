<template>
  <div class="container">
    <div>
      <h1 class="title">
        portfolio
      </h1>
      <h2 class="subtitle">
        Rodrigo Manuel Navarro Lajous web portfolio
      </h2>
      <div class="links">
        <a
          href="https://nuxtjs.org/"
          target="_blank"
          rel="nofollow noreferrer noopener"
          class="button--green"
        >
          Documentation
        </a>
        <a
          href="https://github.com/nuxt/nuxt.js"
          target="_blank"
          rel="nofollow noreferrer noopener"
          class="button--grey"
        >
          GitHub
        </a>
      </div>
    </div>
  </div>
</template>

<script>
import { page } from 'vue-analytics'

export default {
  name: 'Recomendations',
  methods: {
    track() {
      page('/recomendations')
    },
  },
  head() {
    return {
      title: 'Recomendations',
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

<style></style>
