  <template>


    <aside>
        <nav>
         
            <ul class = "categories">
                <li id= "Food"> <a v-on:click.prevent="setFilterCategory('food') " href="#"> Food </a></li>
                <li id= "Sports"><a v-on:click.prevent="setFilterCategory('sports')" href="#">Sports</a></li>
                <li id= "Theater"><a v-on:click.prevent="setFilterCategory('theater')" href="#">Theater</a></li>
                <li id= "Arts"><a v-on:click.prevent="setFilterCategory('arts')" href="#">Arts</a></li>
                <li id= "Parks"><a v-on:click.prevent="setFilterCategory('parks')" href="#">Parks</a></li>
                <li id= "Historical"><a v-on:click.prevent="setFilterCategory('historical')" href="#">Historical</a></li>
            </ul>
        </nav>
    </aside>
  

  </template>

  <script>

export default {
  name: 'Nav-Bar',
  methods: {
    setFilterCategory(category){
      this.$store.commit("SET_FILTER_DAY", "");
      this.$store.commit("SET_FILTER_TIME", "");
      this.$store.commit("SET_FILTER_KEYWORD", "");
      this.$store.commit("SET_FILTER_CATEGORY", category)
    }
}
}





  </script>


  <style scoped>

   nav ul  {
    list-style: none;
    width: 100%;
    height: 150px;
   
    border-radius: 1fr;
    text-align: auto; 
    line-height: 30px;
    vertical-align: center;
    align-items: center;

}
nav {
  background-image:url('../img/updated skyline.jpg');
  background-size: cover;
  background-position: center;
  align-items: center;
}

  

a {
   padding: 5px;
   color: black;
   background-color: rgba(255,255,255,0.50);
   border: solid gray;
   text-decoration: none;
   align-items: center;
   justify-items: center;
   text-transform: uppercase;
   text-emphasis: bold;
}


 .categories {
    font-size: 30px;
    text-align: center;
    border: red;

  }

  </style>
  
 