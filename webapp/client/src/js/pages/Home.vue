<template>
  <div class="">
      <div class="jumbotron jumbotron-fluid">
          <div class="container">
              <h4 class="text-center">Informações sobre alimentação escolar.</h4>
              <p class="text-center lead">
                  Informação disponível para todos: transparência, participação social e integridade..
              </p>
              <form class="box-form form-inline">
                  <input ref="search" class="box-search form-control" type="text" placeholder="Digite o nome da escola">
                  <button v-on:click="search()" class="btn btn-outline-success" type="button">Buscar</button>
              </form>
          </div>
      </div>


      <ul class="demo-list-two mdl-list">
          <h5>Ultimas Unidades Educacionais vistas</h5>
          <hr>

          <li class="mdl-list__item mdl-list__item--two-line">
              <span class="mdl-list__item-primary-content">
                  <i class="material-icons">account_balance</i>
                  <span>EMEF PRES. NILO PEÇANHA - (TERCEI.)</span>
                  <span class="mdl-list__item-sub-title">4 Comentários</span>
              </span>
              <!-- <span class="mdl-list__item-secondary-content">
                  <span class="mdl-list__item-secondary-info">Actor</span>
                  <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
              </span> -->
          </li>
          <br>
      </ul>


  </div>
</template>

<script>
  export default {
    data() {
      return {
        schools: [
          "CEI CONV. RECANTO DA ALEGRIA I",
          "CEI CONV. BELEZINHA PRIMAVERA",
          "EMEF PRES. NILO PEÇANHA - (TERCEI.)",
          "EMEF ALVARES DE AZEVEDO"
        ]
      }
    },
    created() {
    },
    mounted() {

      jQuery(this.$refs.search).autocomplete({
        source: this.schools
      });

    },
    methods: {
      search() {
          this.$router.push({ path: '/school' })
      }
    }
  }
</script>

<style scoped>
    .demo-list-two {
      margin: 0 auto;
      width: 80%;
    }

    .box-title {
        width: 45%;
        color: #424242;
        font-family: 'Sofia W01 Bold1446843','Open Sans',sans-serif;
        font-size: 35px;
        margin: 0 auto;
    }

    .box-paragrath {
        width: 55%;
        margin: 0 auto;
    }

    .box-form {
        width: 56%;
        margin: 0 auto;
    }

    .box-search {
        width: 85%;
        margin: 0 auto;
    }

    @media (max-width: 575px) {
        .box-paragrath {
            width: 100%;
            margin: 0 auto;
        }

        .box-form {
            width: 100%;
            margin: 0 auto;
        }

        .box-search {
            width: 70%;
            margin: 0 auto;
        }
    }

    @media (max-width: 767px) {
        .box-paragrath {
            width: 100%;
            margin: 0 auto;
        }

        .box-form {
            width: 100%;
            margin: 0 auto;
        }

        .box-search {
            width: 70%;
            margin: 0 auto;
        }
    }

    @media (max-width: 800px) {
        .box-paragrath {
            width: 100%;
            margin: 0 auto;
        }

        .box-form {
            width: 100%;
            margin: 0 auto;
        }

        .box-search {
            width: 70%;
            margin: 0 auto;
        }
    }


</style>
