<template>
  <div class="container" style="margin-top: 10px;">

    <div class="form-group row">
      <div class="col-6">
        Data:
        <input v-model="date" class="form-control" ref="datepicker">
      </div>
    </div>

    <ul class="nav nav-tabs">
        <li class="nav-item">
          <a v-on:click="cardapio($event)" class="nav-link" href="#">Cardápio</a>
        </li>

        <li class="nav-item">
          <a v-on:click="comments($event)" class="nav-link active" href="#">Comentários</a>
        </li>
    </ul>

    <h3>EMEF ALVARES DE AZEVEDO</h3>

    <h5>Comentários da Comunidade Escolar</h5>
    <hr>
    <ul class="demo-list-three mdl-list">
      <li class="mdl-list__item mdl-list__item--three-line">
        <span class="mdl-list__item-primary-content">
          <i class="material-icons mdl-list__item-avatar">person</i>
          <span>Critica</span>
          <span class="mdl-list__item-text-body">
            Meu filho sempre me diz que o bolo vem ressecado.
          </span>
        </span>
      </li>
      <li class="mdl-list__item mdl-list__item--three-line">
        <span class="mdl-list__item-primary-content">
          <i class="material-icons  mdl-list__item-avatar">person</i>
          <span>Elogio</span>
          <span class="mdl-list__item-text-body">
            Grande iniciativa da SME. Agora posso planejar o cardapio
            que fazemos em casa sem repetir o que foi servido na escola.
          </span>
        </span>
      </li>
      <li class="mdl-list__item mdl-list__item--three-line">
        <span class="mdl-list__item-primary-content">
          <i class="material-icons  mdl-list__item-avatar">person</i>
          <span>Elogio</span>
          <span class="mdl-list__item-text-body">
            Nao sei o que as merendeiras fazem, mas minha filha passou a
            comer saladas, coisa que ela nunca fez antes. Parabens!
          </span>
        </span>
      </li>
      <li class="mdl-list__item mdl-list__item--three-line">
        <span class="mdl-list__item-primary-content">
          <i class="material-icons  mdl-list__item-avatar">person</i>
          <span>Sugestao</span>
          <span class="mdl-list__item-text-body">
            A gente devia poder escolher o que vai ter de comida na escola.
            Eu nao gosto de verduras.
          </span>
        </span>
      </li>
    </ul>

    <div style="font-size: 19px;">
      <button v-on:click="back" style="background-color: #005653" class="mdl-button mdl-js-button mdl-button--fab mdl-button--colored">
        <i class="material-icons">chevron_left</i>
      </button>
      <br>
      Voltar
    </div>

  </div>
</template>

<script>
  export default {
    data() {
      return {
        date: "24/03/2017"
      }
    },
    created() {

    },
    mounted() {

      jQuery(this.$refs.datepicker).datepicker();
      var d = new Date();
      this.date = d.getDay() + "/" + d.getMonth() +  "/" + d.getFullYear();
      jQuery(this.$refs.datepicker).val(this.date);

    },
    methods: {

        comments(event) {
            event.preventDefault();
            this.$router.push({ path: '/school/comments' })
        },

        cardapio(event) {
            event.preventDefault();
            this.$router.push({ path: '/school' })
        },
        back() {
            window.history.back();
        }

    }
  }
</script>

<style scoped>
  h3, strong {
    color: #bc2026 !important;
  }

  .demo-list-three {
    width: 650px;
  }
</style>
