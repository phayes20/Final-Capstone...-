<template>
  <div class="home">
    <h1>Home</h1>
    <p>WalkCLE</p>
    <!-- <img src="src\img\skyline.jpg" alt="Cleveland Skyline"> -->
    <Nav-Bar />
    

  </div>
</template>



<script>

import NavBar  from '@/components/NavBar';

export default {
  name: "home",
  components:{NavBar},
};




</script>


<link rel="stylesheet" href="style.css">