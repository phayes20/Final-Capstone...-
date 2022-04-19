<template>
    <div class = "location-list">
        <div class="preview"
        v-for="location in filteredList"
        v-bind:key="location.id"
        
        >
        <h2>   {{ location.name }} </h2>
        <p v-bind:key="location.id" v-on:click="viewLocationDetails(location.id)">  {{  location.description  }} <br/>
        <router-link :to="{ name: 'Location', params: { locationID: location.id } }" v-bind:key="location.id" ><button> Get more info </button></router-link></p>
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

.preview {
display:grid;
grid-template-columns:1fr 2fr;
grid-template-areas: 
"image name"
"image description";
justify-content: center;
align-content: center;

}
/* 
.location-list :nth-child(even) {
display:grid;
grid-template-columns:1fr 1fr;
grid-template-areas: 
"image name"
"image description";
justify-content: center;
align-content: center;
}

.location-list :nth-child(odd) {
display:grid;
grid-template-columns:1fr 1fr;
grid-template-areas: 
"name image"
"description image";
} */

.preview {
    border:solid black;
}

h2 {
    grid-area: name;
    justify-self: center;
}
p {
   
    grid-area: description;
    justify-self: center;
    text-align: center;
   
}
img {
    grid-area: image;
    width: 300px;
    height: 300px;
    object-fit: cover;
}

 .location-list  {
    /* height:200vh; */
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:20px;
    justify-items: stretch;
    /* background-color: gray; */
    color: black;


  }

.preview {

    background-color: gray;
}
</style>