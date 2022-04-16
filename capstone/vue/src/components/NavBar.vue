  <template>


    <aside>
        <nav>
         
            <ul>
                <li id= "Food"> <a v-on:click.prevent="setFilterCategory('food') " href="#">Bars / Food </a></li>
                <li id= "Sports"><a v-on:click.prevent="setFilterCategory('sports')" href="#">Sports</a></li>
                <li id= "Theater"><a v-on:click.prevent="setFilterCategory('theater')" href="#">PlayHouse District</a></li>
                <li id= "Arts"><a v-on:click.prevent="setFilterCategory('arts')" href="#">Arts</a></li>
                <li id= "Parks"><a v-on:click.prevent="setFilterCategory('parks')" href="#">Parks</a></li>
                <li id= "Historical"><a v-on:click.prevent="setFilterCategory('historical')" href="#">Historical Sites</a></li>
            </ul>
        </nav>
    </aside>
  

  </template>

  <script>

export default {
  name: 'Nav-Bar',
  methods: {
    setFilterCategory(category){
      this.$store.commit("SET_FILTER_CATEGORY", category)
    }
}
}





  </script>


  <style>

   nav ul  {
    list-style: none;
    width: 100%;
    height: 200px;
   background-image:url('../img/night skyline.jpg'); 
    border-radius: 1fr;
    text-align: auto; 
    line-height: 30px;
}

 ul li {
    padding: 2px;
    border: none;
    font-weight: bold;
    text-align:justify;
    justify-content: space-between;
    align-items: center;
  
}


  </style>
  
  nav ul {background-image:url(skyline.jpg);
//      background-attachment: fixed;
//      background-position: center;
//      background-repeat: no-repeat;background-size: cover;}
// img src="images/data_portrait.png"
//background-image:url('src/img/skyline.jpg');
// <bg-image>#