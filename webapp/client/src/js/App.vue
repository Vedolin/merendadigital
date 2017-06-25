<template>
  <div>
    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header  mdl-layout--fixed-tabs">
      <header class="mdl-layout__header app-menu">
        <div class="mdl-layout__header-row">
          <span class="mdl-layout-title">{{ title }}</span>
          <div class="mdl-layout-spacer"></div>
        </div>
      </header>

      <div id="menu" class="mdl-layout__drawer">
        <span class="mdl-layout-title">MENU</span>
        <nav class="mdl-navigation">
          <router-link class="mdl-navigation__link" to="/" v-on:click="closeMenu($event)">Home</router-link>
          <router-link class="mdl-navigation__link" to="/about" v-on:click="closeMenu($event)">Dados Abertos</router-link>
          <router-link class="mdl-navigation__link" to="/about" v-on:click="closeMenu($event)">Sobre</router-link>
        </nav>
      </div>

      <main class="mdl-layout__content">
          <div class="page-content">
              <router-view></router-view>
          </div>
      </main>

      <footer class="mdl-mini-footer">
          <div class="mdl-mini-footer__left-section">
              <div class="mdl-logo"></div>
              <ul class="mdl-mini-footer__link-list">
                  <li>
                      <router-link to="/">{{ title }}</router-link>
                  </li>
                  <!-- <li><a href="#">Privacy & Terms</a></li> -->
              </ul>
          </div>
      </footer>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'app',
    data() {
      return {
        title: 'NutriEscola - SME'
      }
    },
    methods: {
      closeMenu(event) {
        if (event) event.preventDefault();

        jQuery("#menu").removeClass("is-visible");

      }
    }
  }
</script>

<style scoped>
    .mdl-layout__header, .mdl-layout__tab-bar {
        background-color: #005653 !important;
    }
    .mdl-layout__content {
        margin-bottom: 15px;
    }
</style>
