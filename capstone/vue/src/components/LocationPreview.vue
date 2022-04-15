<template>
    <div class="preview">
        
        <h1>   {{ location.name }} </h1>
        <p>  {{  location.description  }} </p>
        <img :src="location.image" class="location-image" />alt="Location Image" />
    


    </div>

</template>

<script>


export default {
    name: "location-preview",
    props: ['locations'],
    components: {
        
    },
methods: {
    // getLocations() {
    //     LocationService.getLocations().then(response => {
    //         this.$store.commit("SET_LOCATION_DETAILS", response.data.locations)
    //     })
    // },
    
},
}   
</script>
