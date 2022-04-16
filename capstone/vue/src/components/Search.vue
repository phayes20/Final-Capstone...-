<template>
    <div class="search">
        <form>
            <h4>Search by name/description:</h4>
           <input type="text" id="keywordFilter" v-model="filter.keyword" />
           <button v-on:click.prevent="setFilterKeyword" type="submit">Search</button>
        </form>


        <h4> Search by day/hour open: </h4>
        <form id="time-search">
            <label for="day">Day:</label>
            <select id="day" v-model="filter.day">
                <option value="Sunday">Sunday</option>
                <option value="Monday">Monday</option>
                <option value="Tuesday">Tuesday</option>
                <option value="Wednesday">Wednesday</option>
                <option value="Thursday">Thursday</option>
                <option value="Friday">Friday</option>
                <option value="Saturday">Saturday</option>
            </select>
                   
        
        <input type="time" id="search-time" v-model="filter.time"/>
        <button v-on:click.prevent="setTimeFilters" type="submit">Search</button>
        
        </form>
    </div>
</template>

<script>


export default 
    {
       name: 'search-form',
       data(){
           return{
               filter:{
                   keyword: '',
                   time: '',
                   day: ''
               }
           }
       },
       methods: {
           setTimeFilters() {
               this.$store.commit("SET_FILTER_DAY", this.filter.day);
               this.$store.commit("SET_FILTER_TIME", this.filter.time);
           },

        setFilterKeyword(){
      this.$store.commit("SET_FILTER_KEYWORD", this.filter.keyword)
    },
    // setKeyword(keyword){
    //     this.keyword = keyword;
    // }
    }
    }
</script>

<style scoped>

</style>
