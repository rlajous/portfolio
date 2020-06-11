<template>
  <modal name="Error" height="auto" width="50%" classes="radius">
    <div class="modal column space-evenly center">
      <img src="~/assets/img/svg/Group 96.svg" alt="" class="img" />
      <p class="message">
        Message Sending Failed
      </p>
      <button class="button" type="button" @click="$modal.hide('Error')">
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
  name: 'Error',
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
</style>

<style>
.radius {
  border-radius: 3rem !important;
}
</style>
