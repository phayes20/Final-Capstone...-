<template>
    <div class = "location-list">
        <div class="preview"
        v-for="location in filteredList"
        v-bind:key="location.id"
        v-on:click="viewLocationDetails(location.id)">
        <h2>   {{ location.name }} </h2>
        <p>  {{  location.description  }} </p>
        <img :src='require(`../img/Location_Images/${location.name}.png`)'>
        <!-- <img src="../img/Location_Images/{{ location.name }}.png" class="location-image" alt="Location Image" /> -->

    </div>
    </div>
</template>

<script>

import locationService from "@/services/LocationService";
export default {
    

    name: 'location-list',
    // props: ['filteredLocations'],
    locations: [],
    filteredLocations: [],
    // data(){
    //     return {
    //         filter: {
    //             keyword: '',
    //             category: '',
    //             time: '',
    //         }
    //     }
    // },
    computed:{
        filteredList(){
        let filteredLocations = this.$store.state.locations;
            

         if(this.$store.state.locationFilter.keyword != "" ){
            filteredLocations = filteredLocations.filter(location => 
                location.name.toLowerCase().includes(this.$store.state.locationFilter.keyword.toLowerCase()) || location.description.toLowerCase().includes(this.$store.state.locationFilter.keyword.toLowerCase()))
         } if(this.$store.state.locationFilter.category != "" ){
            filteredLocations = filteredLocations.filter(location => 
                location.category == this.$store.state.locationFilter.category)
        } if(this.$store.state.locationFilter.time != "") {
                
            if(this.$store.state.locationFilter.day == "Sunday") {
                 filteredLocations = filteredLocations.filter(location => 
                    (parseInt(location.sundayHourOpen) <= parseInt(this.$store.state.locationFilter.time) && parseInt(location.sundayHourClosed) > parseInt(this.$store.state.locationFilter.time)))
             }if(this.$store.state.locationFilter.day == "Monday") {
                 filteredLocations = filteredLocations.filter(location => 
                    (parseInt(location.mondayHourOpen) <= parseInt(this.$store.state.locationFilter.time) && parseInt(location.mondayHourClosed) > parseInt(this.$store.state.locationFilter.time)))
             }if(this.$store.state.locationFilter.day == "Tuesday") {
                 filteredLocations = filteredLocations.filter(location => 
                    (parseInt(location.tuesdayHourOpen) <= parseInt(this.$store.state.locationFilter.time) && parseInt(location.tuesdayHourClosed) > parseInt(this.$store.state.locationFilter.time)))
             }if(this.$store.state.locationFilter.day == "Wednesday") {
                 filteredLocations = filteredLocations.filter(location => 
                    (parseInt(location.wednesdayHourOpen) <= parseInt(this.$store.state.locationFilter.time) && parseInt(location.wednesdayHourClosed) > parseInt(this.$store.state.locationFilter.time)))
             }if(this.$store.state.locationFilter.day == "Thursday") {
                 filteredLocations = filteredLocations.filter(location => 
                    (parseInt(location.thursdayHourOpen) <= parseInt(this.$store.state.locationFilter.time) && parseInt(location.thursdayHourClosed) > parseInt(this.$store.state.locationFilter.time)))
             }if(this.$store.state.locationFilter.day == "Friday") {
                 filteredLocations = filteredLocations.filter(location => 
                    (parseInt(location.fridayHourOpen) <= parseInt(this.$store.state.locationFilter.time) && parseInt(location.fridayHourClosed) > parseInt(this.$store.state.locationFilter.time)))
             }if(this.$store.state.locationFilter.day == "Saturday") {
                 filteredLocations = filteredLocations.filter(location => 
                    (parseInt(location.saturdayHourOpen) <= parseInt(this.$store.state.locationFilter.time) && parseInt(location.saturdayHourClosed) > parseInt(this.$store.state.locationFilter.time)))
             }
           
            
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