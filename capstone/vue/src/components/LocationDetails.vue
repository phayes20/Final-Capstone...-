<template>
    <div>
        <h1>   {{ location.name }} </h1>
        <h2> {{ location.socialMedia }} </h2>
        <p>  {{  location.description  }} </p>
        <img :src='require(`../img/Location_Images/${location.name}.png`)'>
        <table>
            <tr>
                <td> Monday Hours: </td>
                <td v-if="closedCheck(location.mondayHourOpen, location.mondayHourClosed)"> CLOSED </td>
                <td v-else> {{ location.mondayHourOpen}} to {{ location.mondayHourClosed}}  </td>
                <td> Monday Hours: </td>
                <td v-if="closedCheck(location.mondayHourOpen, location.mondayHourClosed)"> CLOSED </td>
                <td v-else> {{ location.mondayHourOpen}} to {{ location.mondayHourClosed}}  </td>
                <td> Monday Hours: </td>
                <td v-if="closedCheck(location.mondayHourOpen, location.mondayHourClosed)"> CLOSED </td>
                <td v-else> {{ location.mondayHourOpen}} to {{ location.mondayHourClosed}}  </td>
                <td> Monday Hours: </td>
                <td v-if="closedCheck(location.mondayHourOpen, location.mondayHourClosed)"> CLOSED </td>
                <td v-else> {{ location.mondayHourOpen}} to {{ location.mondayHourClosed}}  </td>
                <td> Monday Hours: </td>
                <td v-if="closedCheck(location.mondayHourOpen, location.mondayHourClosed)"> CLOSED </td>
                <td v-else> {{ location.mondayHourOpen}} to {{ location.mondayHourClosed}}  </td>
                <td> Monday Hours: </td>
                <td v-if="closedCheck(location.mondayHourOpen, location.mondayHourClosed)"> CLOSED </td>
                <td v-else> {{ location.mondayHourOpen}} to {{ location.mondayHourClosed}}  </td>
                <td> Monday Hours: </td>
                <td v-if="closedCheck(location.mondayHourOpen, location.mondayHourClosed)"> CLOSED </td>
                <td v-else> {{ location.mondayHourOpen}} to {{ location.mondayHourClosed}}  </td>
            </tr>
            </table>
        <button v-on:click.prevent="toggleCheckIn"> Check In! </button>
        <check-in v-show="showCheckIn == true" />
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
