<template>
  <div>
    <nav>
      <div class="nav-wrapper">
        <router-link class="brand-logo" to="/">{{ title }}</router-link>
        <!-- <a href="#!" >Logo</a> -->
        <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
        <ul class="right hide-on-med-and-down">
          <li><router-link to="/map">Map</router-link></li>
          <li><router-link to="/about">About</router-link></li>
        </ul>
        <ul class="side-nav" id="mobile-demo">
          <li><router-link to="/map">Map</router-link></li>
          <li><router-link to="/about">About</router-link></li>
        </ul>
      </div>
    </nav>

    <router-view></router-view>
  </div>
</template>

<script scoped>
  export default {
    name: 'app',
    data() {
      return {
        title: 'Alimentação Escolar - SME'
      },
      created() {
        $(document).ready(function(){
          $(".button-collapse").sideNav();
        })
      }
    }
  }
</script>

<style>
</style>
