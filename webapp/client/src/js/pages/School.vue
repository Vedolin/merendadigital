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
        <a v-on:click="cardapio($event)" class="nav-link active" href="#">Cardápio</a>
      </li>

      <li class="nav-item">
        <a v-on:click="comments($event)" class="nav-link" href="#">Comentários</a>
      </li>

    </ul>

    <h3>EMEF ALVARES DE AZEVEDO</h3>
    <p>
      2 A 6 ANOS ...
    </p>

    <p>
      <strong>DESJEJUM</strong>
      <p>
        Planejado: Composto Lácteo Cappuccino, Bolo sabor Fubá e <strong>Maçã</strong>.<br>
        Servido: Composto Lácteo Cappuccino, Bolo Individual sabor Fubá e <strong>Banana</strong>.
      </p>

      <strong>ALMOÇO</strong>
      <p>
        Planejado: Arroz, Feijão Carioca, Escondidinho de PTS e Mamão.<br>
        Servido: Arroz, Feijão Carioca, Escondidinho de PTS e Mamão.
      </p>

      <strong>LANCHE</strong>
      <p>
        Planejado: Leite Integral com Achocolatado, Biscoito Salgado e Banana Prata.<br>
        Servido: Leite Integral com Achocolatado, Biscoito Salgado e Banana Prata.
      </p>
    </p>

    <example style="width: 250px; margin-bottom: 15px; margin-top: 15px;"></example>

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

      var d = new Date();
      this.date = d.getDay() + "/" + d.getMonth() +  "/" + d.getFullYear();

      jQuery(this.$refs.datepicker).datepicker();

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
</style>
