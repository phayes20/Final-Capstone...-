<template>
    <div id="blue">
        <div id= "text">
        <h1>   {{ location.name }} </h1>
        <h2> {{ location.socialMedia }} </h2>
        <p class="location-text">
        <img :src='require(`../img/Location_Images/${location.name}.png`)' class="location-image" style="float:left;" >
        {{  location.description  }}
       </p>
        <table class="Hours">
            <tr>
                <td> Monday Hours: </td>
                <td v-if="closedCheck(location.mondayHourOpen, location.mondayHourClosed)"> CLOSED </td>
                <td v-else> {{ location.mondayHourOpen}} to {{ location.mondayHourClosed}}  </td>
            </tr>
            <tr>
                <td> Tuesday Hours: </td>
                <td v-if="closedCheck(location.tuesdayHourOpen, location.tuesdayHourClosed)"> CLOSED </td>
                <td v-else> {{ location.tuesdayHourOpen}} to {{ location.tuesdayHourClosed}}  </td>
            </tr>
            <tr>
                <td> Wednesday Hours: </td>
                <td v-if="closedCheck(location.wednesdayHourOpen, location.wednesdayHourClosed)"> CLOSED </td>
                <td v-else> {{ location.wednesdayHourOpen}} to {{ location.wednesdayHourClosed}}  </td>
            </tr>
            <tr>
                <td> Thursday Hours: </td>
                <td v-if="closedCheck(location.thursdayHourOpen, location.thursdayHourClosed)"> CLOSED </td>
                <td v-else> {{ location.thursdayHourOpen}} to {{ location.thursdayHourClosed}}  </td>
            </tr>
            <tr>
                <td> Friday Hours: </td>
                <td v-if="closedCheck(location.mondayHourOpen, location.mondayHourClosed)"> CLOSED </td>
                <td v-else> {{ location.fridayHourOpen}} to {{ location.fridayHourClosed}}  </td>
            </tr>
            <tr>
                <td> Saturday Hours: </td>
                <td v-if="closedCheck(location.mondayHourOpen, location.mondayHourClosed)"> CLOSED </td>
                <td v-else> {{ location.saturdayHourOpen}} to {{ location.saturdayHourClosed}}  </td>
            </tr>
            <tr>
                <td> Sunday Hours: </td>
                <td v-if="closedCheck(location.sundayHourOpen, location.sundayHourClosed)"> CLOSED </td>
                <td v-else> {{ location.sundayHourOpen}} to {{ location.sundayHourClosed}}  </td>
            </tr>
            </table>
        <button v-on:click.prevent="toggleCheckIn"> Check In! </button>
        <check-in v-show="showCheckIn == true" />
    </div>
    </div>
</template>

<script>
import locationService from "@/services/LocationService";
import CheckIn from './CheckIn.vue';

export default {
    components: {CheckIn},
    data(){
        return{
            showCheckIn: false
        }
    },
    methods: {
    retrieveLocation() {
        locationService.getLocation(this.$route.params.locationID).then(response => {
           this.$store.commit("SET_LOCATION", response.data)
       }).catch(error => {
          if (error.response && error.response.status === 404) {
            alert(
              "Location details not available. This board may have been deleted or you have entered an invalid board ID."
            );
            this.$router.push("/");
          }
    });
    },
    closedCheck(hoursOpen, hoursClosed) {
        if (hoursOpen == hoursClosed) {
            return true;
        }
    },
    toggleCheckIn() {
        this.showCheckIn = !this.showCheckIn;
    },
    },
    created(){
        this.retrieveLocation();
    },
    
    computed: {
        location(){
        return this.$store.state.location;
        }
    }
}
</script>

 <style scoped>
 #blue {
    height: 100vh;
    /* display: grid; */
    grid-template-columns: 1fr 1fr;
    gap:20px;
    align-items: right;
    background-color:#5F9EA0;
 }
 .location-image {
     float: left;
     margin-right: 10px;
 }
 p.location-text {
     font-family: Arial, Helvetica, sans-serif;
     font-size: 1.5em;
 }
.Hours {
    font-family: Arial, Helvetica, sans-serif;
     font-size: 1.2em;
}
 </style>