<template>
    <div class = "location-list">
        <div class="preview"
        v-for="location in locations"
        v-bind:key="location.id"
        v-on:click="viewLocationdDetails(location.id)">
        <h1>   {{ location.name }} </h1>
        <p>  {{  location.description  }} </p>
        <img :src="location.image" class="location-image" />alt="Location Image" />

    </div>
    </div>
</template>
<script>


export default {
    name: 'location-list',
    props: ['locations'],
    methods: {
        viewLocationdDetails(locationID) {
         this.$router.push(`/location/${locationID}`);
    },
    }
}

</script>

<style scoped>
/* needs to be set up as flexbox */
</style>