<template>
  <div class="content column center">
    <h1 class="header">
      My Protfolio
    </h1>
    <div class="section relative">
      <h2 class="title">
        Company Name here
      </h2>
      <picture>
        <source srcset="~/assets/img/Polygon_6.webp" type="image/webp" />
        <img
          src="~/assets/img/Polygon_6.png"
          alt="Portait of myself"
          class="absolute background"
        />
      </picture>
      <div class="projects">
        <div class="project column">
          <picture>
            <source srcset="~/assets/img/portrait.webp" type="image/webp" />
            <img
              src="~/assets/img/portrait.png"
              alt="Portait of myself"
              class="image"
            />
          </picture>
          <div class="row">
            <div class="column">
              <div class="name">
                Project Name
              </div>
              <div class="description">
                Lorem Ipsum is simply dummy text of the printing
              </div>
            </div>
            <div class="button">
              Explore
            </div>
          </div>
        </div>
      </div>
    </div>
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
    height: 166px;
    opacity: 0.08;
    font-family: Impact;
    font-size: 136px;
    font-weight: normal;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.22;
    letter-spacing: normal;
    text-align: left;
    color: var(--black);
  }

  .section {
    .title {
      height: 67px;
      font-family: 'Futura';
      font-size: 50px;
      font-weight: bold;
      font-stretch: normal;
      font-style: normal;
      line-height: 1.34;
      letter-spacing: normal;
      text-align: left;
      color: var(--black);
    }

    .projects {
      .project {
        height: 704px;
        border-radius: 20px;
        box-shadow: 0 3px 15px 0 var(--black-16);
        background-color: var(--white);

        .image {
          width: 850px;
          height: 532px;
          object-fit: contain;
        }

        .name {
          height: 47px;
          font-family: Futura;
          font-size: 35px;
          font-weight: bold;
          font-stretch: normal;
          font-style: normal;
          line-height: 1.71;
          letter-spacing: normal;
          text-align: left;
          color: var(--black);
        }

        .description {
          height: 24px;
          font-family: FuturaLtBT;
          font-size: 20px;
          font-weight: 300;
          font-stretch: normal;
          font-style: normal;
          line-height: 1.35;
          letter-spacing: normal;
          text-align: left;
          color: var(--black);
        }

        .button {
          width: 211px;
          height: 55px;
          border-radius: 20px;
          background-color: var(--soft-blue);
          font-family: FuturaHvBT;
          font-size: 20px;
          font-weight: 900;
          font-stretch: normal;
          font-style: normal;
          line-height: 55px;
          letter-spacing: normal;
          text-align: center;
          color: var(--white);
        }
      }
    }
  }
}
</style>
