<template>
  <div class="container column center">
    <button v-if="!user" class="button" @click="login">Login</button>
    <button v-else class="button" @click="logOut">Logout</button>
    <div v-if="user" class="column center w-100">
      <div class="card column start">
        <div class="column start space-between">
          <div class="name">
            Your Address
          </div>
          <div class="name">
            {{ user.attributes.ethAddress }}
          </div>
        </div>
      </div>
      <div class="title">
        Gas Fee Leaderboard
      </div>
      <div v-if="gasFees && gasFees.length" class="column center w-100">
        <div
          v-for="gasFee in gasFees"
          :key="gasFee.objectId"
          :class="[
            gasFee.objectId === user.attributes.ethAddress
              ? 'card column start selected'
              : 'card column start',
          ]"
        >
          <div class="column start space-between">
            <div class="name">Address:</div>
            <div class="name">{{ gasFee.objectId }}</div>
            <div class="name">Average Gas Fee</div>
            <div class="name">{{ gasFee.avgGas }} Gwei</div>
          </div>
        </div>
      </div>
      <div class="title">
        Your Transactions
      </div>
      <div
        v-if="userTransactions && userTransactions.length"
        class="column center w-100"
      >
        <div
          v-for="userTransaction in userTransactions"
          :key="userTransaction.id"
          class="card column start"
        >
          <div class="column start space-between">
            <div class="name">From Address</div>
            <div class="name">
              {{ userTransaction.attributes.from_address }}
            </div>
          </div>
          <div class="column start space-between">
            <div class="name">
              To Address
            </div>
            <div class="name">
              {{ userTransaction.attributes.to_address }}
            </div>
          </div>
          <div class="column start space-between">
            <div class="name m-r-1">
              Gas Fee
            </div>
            <div class="name">
              {{ userTransaction.attributes.gas }}
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { page } from 'vue-analytics'
import moralis from 'moralis'

export default {
  name: 'Recomendations',
  data() {
    return {
      user: null,
      gasFees: null,
      userTransactions: null,
    }
  },
  methods: {
    track() {
      page('/recomendations')
    },
    async login() {
      this.user = moralis.User.current()
      if (!this.user) {
        this.user = await moralis.Web3.authenticate()
      }
      this.getStats()
      console.log('logged in user:', this.user)
    },
    async logOut() {
      await moralis.User.logOut()
      this.user = null
      console.log('logged out')
    },
    handleNewTransaction(subscription) {
      // log each new transaction
      subscription.on('create', function (data) {
        console.log('new transaction: ', data)
      })
    },
    async getUserTransactions(user) {
      // create query
      const query = new moralis.Query('EthTransactions')
      query.equalTo('from_address', user.get('ethAddress'))

      // subscribe to query updates
      const subscription = await query.subscribe()
      this.handleNewTransaction(subscription)

      // run query
      this.userTransactions = await query.find()
      console.log('user transactions:', this.userTransactions)
    },
    async getAverageGasPrices() {
      this.gasFees = await moralis.Cloud.run('getAvgGas')
      console.log('average user gas prices:', this.gasFees)
    },
    getStats() {
      const user = moralis.User.current()
      if (user) {
        this.getUserTransactions(user)
      }
      this.getAverageGasPrices()
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

<style lang="scss" scoped>
.container {
  max-width: 100vw;
  height: fit-content;
  overflow: hidden;
}
.w-100 {
  width: 100%;
}

.m-r-1 {
  min-width: 30%;
  margin-right: 1rem;
}

.button {
  border: none;
  padding: auto;
  width: 13rem;
  height: 3.1rem;
  border-radius: 0.6rem;
  font-family: 'Futura Hv BT';
  background-image: linear-gradient(
    to left,
    var(--color-primary-light),
    var(--color-primary)
  );
  margin-bottom: 2rem;
  text-decoration: none;
  line-height: 3.1rem;
  font-size: 1.3rem;
  font-weight: 900;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: var(--white);
  box-shadow: 0.3rem 0.6rem 0.6rem 0 var(--black-16);

  &:active {
    background-image: linear-gradient(
      to right,
      var(--color-primary-light),
      var(--color-primary)
    );
  }
}

.title {
  opacity: 0.5;
  font-family: 'Impact';
  font-size: 8.5rem;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.22;
  letter-spacing: normal;
  text-align: left;
  color: var(--color-primary);
  margin: 1rem;
}

.subtitle {
  margin-bottom: 2rem;
  width: 55%;
  font-family: 'Futura Bk BT';
  font-size: 2rem;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.34;
  letter-spacing: normal;
  text-align: center;
  color: var(--text-color);
}

.card {
  margin-bottom: 2rem;
  // margin-right:  16.25rem;
  // width: 23.5rem;
  min-width: fit-content;
  width: 100%;
  max-width: 90%;
  height: fit-content;
  padding: 1rem;
  border-radius: 0.6rem;
  -webkit-backdrop-filter: blur(1.8rem);
  backdrop-filter: blur(1.8rem);
  box-shadow: 0 3px 15px 0 var(--black-16);
  background-color: var(--card-bg);
  position: relative;

  &.selected {
    border-style: solid;
    border-color: var(--color-primary);
  }

  .row {
    width: 100%;
  }

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
    flex-grow: 1;
    min-height: 1.7rem;
    font-family: 'Futura Hv BT';
    font-size: 1.25rem;
    font-weight: 900;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.35;
    letter-spacing: normal;
    text-align: center;
    color: var(--text-color);
    margin-bottom: 1rem;
  }

  .divider {
    margin-top: 1.3rem;
    border: 1px solid var(--color-primary);
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
    color: var(--text-color);
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
    color: var(--text-color);
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
    color: var(--text-color);
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
    margin-bottom: 1rem;
    // width: 18.5rem;
    // height: 18.4rem;
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
      min-height: 1.36rem;
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
