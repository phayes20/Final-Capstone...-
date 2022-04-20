<template>
    <div class="profile" v-bind:key="this.$store.state.user.id"> 
        <h3>Check-in history:</h3>
        <div id="checkins">
            <div id="checkin" v-for="checkIn in this.$store.state.checkIns" v-bind:key="checkIn.userId">
            
            <p>Check-in Date: {{ checkIn.timeStamp }} at  {{ checkIn.name }} </p>
              <img :src='`${checkIn.imgUrl}`' />
            </div>
        </div>

        <div id="badges">
            <h3> Earned Badges: </h3>
            <img src = '@/img/badges/black_cleat_shoe.png' />
         </div>
        
    </div>
</template>

<script>

import userService from "@/services/UserService";
import locationService from "@/services/LocationService";

export default {
    data(){
        return {
            updatedCheckins: []
        }
    },
 methods:{
     getUserCheckIns() {
         userService.getCheckIns(this.$store.state.user.id).then(response => {
             this.$store.commit("SET_CHECKINS", response.data)
         }).catch(error => {
          if (error.response && error.response.status === 404) {
            alert(
              "Location cards not available. This board may have been deleted or you have entered an invalid board ID."
            );
            this.$router.push("/");
          }
     })


    },
    getLocationName(locationId){
        let  location= locationService.getLocation(locationId);
       return location.name;
    },
    // importCheckIns(){
    //     let checkIns = this.$store.state.checkIns;
    //     checkIns.forEach(checkIn => {  
    //         checkIn.locationName = this.getLocationName(checkIn.locationId)
    //         this.updatedCheckin.push(checkIn)
    //     });
    // }
 },
 created() {
     this.getUserCheckIns();
    //  this.importCheckIns();

 }
}
</script>

<style scoped>

</style>
