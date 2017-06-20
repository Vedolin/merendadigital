<template>
  <div>
    <h1 class="title m-b-md">
      <!-- <router-link to="/">{{ title }}</router-link> -->
      {{ title }}
    </h1>
    <hr>

    <div class="links">
      <router-link to="/">Home</router-link>
      <!-- <router-link to="/map/40.00/90.00">Map</router-link>
      <router-link to="/map/70.00/120.00">Map</router-link> -->
      <router-link to="/map">Map</router-link>
      <router-link to="/about">About</router-link>
    </div>

    <router-view></router-view>
  </div>
</template>

<script scoped>
  export default {
    name: 'app',
    data() {
      return {
        title: 'My Vue App'
      }
    }
  }
</script>

<style>
</style>
