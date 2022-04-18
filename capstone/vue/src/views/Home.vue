<template>
  <div class="home">
    <!-- <h1>WalkCLE</h1> -->
    
   <h1 class="header">WalkCLE</h1>
    <!-- <img src="src\img\skyline.jpg" alt="Cleveland Skyline"> -->
    <Nav-Bar />
    <Search />
      <div class="location-display">
        <div class="map">
        <add-google-map />
        </div>
        <div class="locations">
        <location-list />
        </div>
      </div>
     <div class= "container">
       
    <div id="background_photo">
     
      <!-- <img alt="background" src="../img/Location_Images/Cleveland_Sign.png"> -->


    </div>
   
   
    <div id="food_photo">
    
      <!-- <img alt="food" src="../img/food collage.jpeg"> -->
    
    </div>
  </div>

  </div>




</template>

<!--relative path similar to line 24 -->

<script>

import NavBar  from '@/components/NavBar';
import Search from '@/components/Search';
import AddGoogleMap from '@/components/AddGoogleMap';

import LocationList from '../components/LocationList.vue';

export default {
  name: "home",
  components:{NavBar, Search, AddGoogleMap, LocationList},
};




</script>

<style>




/* #food_photo {
  grid-area: Food_Img;
}

#Food {
    grid-area: Food;
}

#Sports {
    grid-area: Sports;
}

#Theater {
    grid-area: Theater;
}

#Arts {
    grid-area: Arts;
}
 #Parks {
   grid-area: Parks;
 }

 #Historical {
   grid-area: Historical;
 }
 */

 ul {
    display: grid;
    /* grid-template-rows: 1fr 1fr 1fr; */
    grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr; 
    grid-template-areas:
       "Food Sports Theater Arts Parks Historical"
      
       
       ;
    height: 100px;
    gap: 20px; 
    
 } 

 .location-display{
 display: grid;
 grid-template-columns: 1.35fr 2fr 2fr;
 grid-template-areas: 'map location location';

 }

.locations{
  grid-area: location;
}

.map{
  grid-area: map;
  position: fixed;
  margin-bottom: 200px ;
  margin-top: -37px;
 
}
</style>


// nav ul {background-image:url(skyline.jpg);
//      background-attachment: fixed;
//      background-position: center;
//      background-repeat: no-repeat;background-size: cover;}
 

