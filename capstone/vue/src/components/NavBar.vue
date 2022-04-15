  <template>


    <aside>
        <nav>
            <ul>
                <li id= "Food" v-on:click="LocationList.filter.category = 'food' ">Bars / Food</li>
                <li id= "Sports"><a href="#">Sports</a></li>
                <li id= "Theater"><a href="#">PlayHouse District</a></li>
                <li id= "Arts"><a href="#">Arts</a></li>
                <li id= "Parks"><a href="#">Parks</a></li>
                <li id= "Historical"><a href="#">Historical Sites</a></li>
            </ul>
        </nav>
    </aside>
  

  </template>

  <script>

export default {
  name: "Nav-Bar"
};





  </script>


  <style>

  </style>
  
  