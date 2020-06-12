<template>
  <modal name="Success" height="auto" width="50%" classes="radius">
    <div class="modal column space-evenly center">
      <img src="~/assets/img/svg/Group 95.svg" alt="" class="img" />
      <p class="message">
        Message sent succesffuly
      </p>
      <button class="button" type="button" @click="$modal.hide('Success')">
        <img
          src="~/assets/img/svg/icons-27.svg"
          alt="close button"
          class="close"
        />
      </button>
    </div>
  </modal>
</template>

<script>
export default {
  name: 'Success',
}
</script>

<style lang="scss" scoped>
.modal {
  height: 39rem;
  position: relative;

  .img {
    height: 19rem;
  }

  .message {
    font-size: 2.2rem;
    font-weight: bold;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.34;
    letter-spacing: normal;
    text-align: left;
    color: var(--black);
  }

  .button {
    position: absolute;
    top: 2rem;
    right: 2rem;
    background: transparent;
    border: none;

    .close {
      height: 4rem;
    }
  }
}

@media (max-width: 460px) {
  .modal {
    height: 19rem;
    position: relative;

    .img {
      height: 7rem;
      margin-top: 2rem;
    }

    .message {
      font-size: 1.2rem;
      text-align: center;
    }

    .button {
      position: absolute;
      top: 2rem;
      right: 2rem;
      background: transparent;
      border: none;

      .close {
        height: 1.5rem;
      }
    }
  }
}
</style>

<style>
.radius {
  border-radius: 3rem !important;
}
</style>
