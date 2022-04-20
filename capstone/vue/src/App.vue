<template>
  <div id="app">
    <AddGoogleMap
    apiKey= "AIzaSyBMDfZgTl5P9-Xya4ZmsWL3jYCqnCwjw0o&q"
    latitude="37"
    longitude="-121"
    zoom="10"
    />
    <div id="nav">
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;|&nbsp;
      <!-- <router-link v-bind:to="{ name: 'logout' }" v-if="this.$store.state.token != ''">Logout</router-link> -->
      

      </div>
    <router-view />
  </div>
</template>

<script>


import  AddGoogleMap from './components/AddGoogleMap.vue'

export default {

  name:'app',
  components: {

    AddGoogleMap
  },
  mounted(){

  }
}



</script>


