<template>
    <div class = "location-list">
        <div class="preview"
        v-for="location in filteredList"
        v-bind:key="location.id"
        v-on:click="viewLocationDetails(location.id)">
        <h2>   {{ location.name }} </h2>
        <p>  {{  location.description  }} </p>
        <img :src="location.image" class="location-image" alt="Location Image" />

    </div>
    </div>
</template>

<script>

import locationService from "@/services/LocationService";
export default {
    

    name: 'location-list',
    props: ['filteredLocations'],
    locations: [],
    filteredLocations: [],
    data(){
        return {
            filter: {
                keyword: '',
                category: '',
                time: '',
            }
        }
    },
    computed:{
        filteredList(){
        let filteredLocations = this.$store.state.locations;
         if(this.filter.keyword != "" ){
            filteredLocations = filteredLocations.filter(location => 
                location.name.includes(this.filter.keyword) || location.description.includes(this.filter.keyword))
         } if(this.filter.category != "" ){
            filteredLocations = filteredLocations.filter(location => 
                location.category.includes(this.filter.category))
        } if(this.filter.time != "") {
            filteredLocations = filteredLocations.filter(location => 
                location.time.includes(this.filter.category))
        }
        return filteredLocations;
    }
    },
    methods: {
        viewLocationDetails(locationID) {
         this.$router.push(`/location/${locationID}`);
    },
    retrieveLocations() {
        locationService.getLocations().then(response => {
           this.$store.commit("SET_LOCATIONS", response.data)
       }).catch(error => {
          if (error.response && error.response.status === 404) {
            alert(
              "Location cards not available. This board may have been deleted or you have entered an invalid board ID."
            );
            this.$router.push("/");
          }
    });
    },
    },

    
    created() {
    this.retrieveLocations();
    },
    }

</script>

<style scoped>
/* needs to be set up as flexbox */
</style>