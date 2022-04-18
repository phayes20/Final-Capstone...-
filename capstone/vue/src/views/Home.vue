<template>
  <div class="home">
    <!-- <h1>WalkCLE</h1> -->
   <h1>WalkCLE</h1>
    <!-- <img src="src\img\skyline.jpg" alt="Cleveland Skyline"> -->
    <Nav-Bar />
    <Search />
    <add-google-map />
    <location-list />
     <div class= "container">
       
    <div id="background_photo">
     
      <img alt="background" src="../img/Location_Images/Cleveland_Sign.png">


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
       "Food Food_Img Sports Sports"
       "Theater Theater Arts Arts"
       "Parks Parks Historical Historical"
       ;
    height: 100px;
    gap: 20px; 
    
 } 
</style>


// nav ul {background-image:url(skyline.jpg);
//      background-attachment: fixed;
//      background-position: center;
//      background-repeat: no-repeat;background-size: cover;}
 

