<template>
  <div class="home">
    <h1>Home</h1>
    <p>WalkCLE</p>
    <!-- <img src="src\img\skyline.jpg" alt="Cleveland Skyline"> -->
    <Nav-Bar />
    <Search />
    

  </div>
</template>



<script>

import NavBar  from '@/components/NavBar';
import Search from '@/components/Search'

export default {
  name: "home",
  components:{NavBar, Search},
};




</script>


<link rel="stylesheet" href="style.css">