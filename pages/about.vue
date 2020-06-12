<template>
  <div class="container column center">
    <div class="relative column center">
      <h2 class="title">
        About Me
      </h2>
      <h1 class="subtitle relative">
        I am passionate with scuba, I love my two dogs, I love to draw. I am
        currently takin theatre impro classes. I love the beach. I currently
        live in Argentina and have Spanish passport. I work remotely
      </h1>
    </div>
    <picture>
      <source srcset="~/assets/img/red_underline.webp" type="image/webp" />
      <img
        src="~/assets/img/red_underline.png"
        alt="about underline"
        class="underline"
      />
    </picture>
    <h2 class="title m-b-10">
      Skills
    </h2>
    <div class="row wrap w-8 center">
      <div v-for="tech in techs" :key="tech" class="relative card-container">
        <picture>
          <source srcset="~/assets/img/Polygon_6.webp" type="image/webp" />
          <img
            src="~/assets/img/Polygon_6.png"
            alt="background image"
            class="polygon absolute"
          />
        </picture>
        <div class="card column center relative">
          <div class="icon column">
            <picture class="image">
              <source
                :srcset="require('~/assets/img/' + tech.img + '.webp')"
                type="image/webp"
              />
              <img
                :src="require('~/assets/img/' + tech.img + '.png')"
                alt="Portait of myself"
                class="image"
              />
            </picture>
          </div>
          <p class="name">
            {{ tech.name }}
          </p>
          <hr class="divider" />
          <p class="description">
            {{ tech.description }}
          </p>
          <p class="experience-title">
            Experiance
          </p>
          <p class="experience">
            {{ tech.time }}
          </p>
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { page } from 'vue-analytics'
import technologies from '~/constants/about'

export default {
  name: 'About',
  data() {
    return {
      techs: technologies,
    }
  },
  methods: {
    track() {
      page('/about')
    },
  },
  head() {
    return {
      title: 'About Me',
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
  max-width: 100vw;
  height: fit-content;
  overflow: hidden;
}

.m-b-10 {
  margin-bottom: 6.25rem;
}

.w-8 {
  width: 90%;
}

.title {
  opacity: 0.08;
  font-family: 'Impact';
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
  top: -4rem;
  width: 55%;
  font-family: 'Futura Bk BT';
  font-size: 2rem;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.34;
  letter-spacing: normal;
  text-align: center;
  color: var(--black);
}

.underline {
  margin-bottom: 7rem;
}

.polygon {
  width: 46rem;
  top: -9rem;
  left: -7rem;
  transform: rotate(46deg);
}

.card-container {
  &:nth-of-type(3n + 2) {
    margin-right: 16.25rem;
    margin-left: 16.25rem;
  }
}

.card {
  margin-bottom: 16.25rem;
  // margin-right:  16.25rem;
  width: 23.5rem;
  height: 23rem;
  border-radius: 0.6rem;
  -webkit-backdrop-filter: blur(1.8rem);
  backdrop-filter: blur(1.8rem);
  box-shadow: 0 3px 15px 0 var(--black-16);
  background-color: var(--white);
  position: relative;

  .icon {
    width: 5.6rem;
    height: 5.6rem;
    box-shadow: 0 3px 15px 0 var(--black-16);
    background-color: var(--white);
    border-radius: 50%;
    position: absolute;
    top: -2.8rem;

    .image {
      margin: auto;
      width: 3.75rem;
      height: 3.75rem;
      object-fit: contain;
    }
  }

  .name {
    margin-top: 5rem;
    height: 1.7rem;
    font-family: 'Futura Hv BT';
    font-size: 1.25rem;
    font-weight: 900;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.35;
    letter-spacing: normal;
    text-align: center;
    color: var(--black);
  }

  .divider {
    margin-top: 1.3rem;
    border: 1px solid var(--soft-blue);
    width: 6rem;
    margin-bottom: 1.6rem;
  }

  .description {
    width: 80%;
    height: 4.75rem;
    font-family: 'Futura Bk BT';
    font-size: 1rem;
    font-weight: normal;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.31;
    letter-spacing: normal;
    text-align: center;
    color: var(--black);
    margin-bottom: 3.75rem;
  }

  .experience-title {
    height: 1.3rem;
    opacity: 0.7;
    font-family: 'Futura Hv BT';
    font-size: 1rem;
    font-weight: 900;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.31;
    letter-spacing: normal;
    text-align: left;
    color: var(--black);
    margin-bottom: 0.5rem;
  }

  .experience {
    height: 1.7rem;
    font-family: 'Futura Hv BT';
    font-size: 1.25rem;
    font-weight: 900;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.35;
    letter-spacing: normal;
    text-align: left;
    color: var(--black);
    margin-bottom: 1.75rem;
  }
}

@media (max-width: 460px) {
  .title {
    font-size: 3.45rem;
  }

  .subtitle {
    top: 0;
    width: 80%;
    font-size: 1.63rem;
  }

  .underline {
    width: 80%;
    display: flex;
    margin: auto;
    margin-bottom: 4rem;
    margin-top: 1rem;
  }

  .polygon {
    width: 36rem;
    top: -7rem;
    left: -6rem;
  }

  .card {
    margin-bottom: 9rem;
    width: 18.5rem;
    height: 18.4rem;
    border-radius: 0.6rem;

    .icon {
      width: 4.7rem;
      height: 4.7rem;
      top: -2.4rem;

      .image {
        width: 2.9rem;
        height: 2.9rem;
      }
    }

    .name {
      margin-top: 3.8rem;
      height: 1.36rem;
      font-size: 1rem;
    }

    .divider {
      margin-top: 1.15rem;
      border: 1px solid var(--soft-blue);
      width: 5.72rem;
      margin-bottom: 1.2rem;
    }

    .description {
      width: 80%;
      min-height: 5.95rem;
      height: 100%;
      font-size: 0.8rem;
      margin-bottom: 0.5rem;
    }

    .experience-title {
      height: 1rem;
      font-size: 0.8rem;
      margin-bottom: 0.3rem;
    }

    .experience {
      height: 1.36rem;
      font-size: 1rem;
      margin-bottom: 1.5rem;
    }
  }
}
</style>
