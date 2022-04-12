  <template>


    <aside>
        <nav>
            <ul>
                <li id= "Food"><a href="#">Bars / Food</a></li>
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


ul {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr;
    grid-template-areas:
       "Food Sports Theater Arts Parks Historical "
       ;
    height: 100px;
    gap: 20px;

    
}



<!-- @media only screen and (max-width: 800px) {
    body {
        display: grid;
        grid-template-columns: 1fr;
        grid-template-areas: 
        "header"
        "main"
        "Popsicle-Race"
        "Store"
        "footer"
        ;
        height: 100vh;
        gap: 20px; -->

        
    <!-- } -->

    
}









  </style>
  
  