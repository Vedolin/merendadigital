<template>
  <div>
    <h2>Map</h2>

    <div id="map"></div>

    <p>
      <button @click="goHome" class="btn btn-default">Go Home</button>
    </p>
  </div>
</template>

<script>
  import L from 'leaflet';

  export default {
    data() {
      return {

      }
    },
    created() {
      // alert(this.$route.params.lon)
    },
    mounted() {
      let holmesHouse = [51.5238951, -0.1584347];
      let info = `
        <div style="width: 200px; height: 170px;">
          <strong style="color: #ceaa33">Sherlock Holmes House</strong>
        </div>
      `;

      let map = L.map('map').setView(holmesHouse, 6);

      let marker = L.marker(holmesHouse).addTo(map);
      marker.bindPopup(info).openPopup();

      let circle = L.circle(holmesHouse, {
        color: 'red',
        fillColor: '#f03',
        fillOpacity: 0.5,
        radius: 40
      }).addTo(map);

      let tiles = new L.TileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
      }).addTo(map);
    },
    methods: {
      goHome() {
        this.$router.push('/');
      }
    },
    watch: {
      '$route' (to, from) {
        // alert(this.$route.params.lon)
      }
    }
  }
</script>

<style scoped>
  #map {
    height: 380px;
  }
</style>
