<template>
  <div class="home">
    <h1>Home</h1>
    <p>WalkCLE</p>
    <!-- <img src="src\img\skyline.jpg" alt="Cleveland Skyline"> -->
    <Nav-Bar />
    <Search />
    <add-google-map />
    

  </div>
</template>



<script>

import NavBar  from '@/components/NavBar';
import Search from '@/components/Search';
import AddGoogleMap from '@/components/AddGoogleMap';

export default {
  name: "home",
  components:{NavBar, Search, AddGoogleMap},
};




</script>


<link rel="stylesheet" href="style.css">