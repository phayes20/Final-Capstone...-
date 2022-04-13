<template>
    <div class="search">
        <form>
            <textarea> </textarea>
        </form>
        <form id="time-search">
            <!-- <label for="day">Day:</label>
            <select id="day">
                <option value="Sunday">Sunday</option>
                <option value="Monday">Monday</option>
                <option value="Tuesday">Tuesday</option>
                <option value="Wednesday">Wednesday</option>
                <option value="Thursday">Thursday</option>
                <option value="Friday">Friday</option>
                <option value="Saturday">Saturday</option>
            </select>
            <label for= "time"> 
            <select id="time">time</select>
        </form> -->
        <input type="datetime-local" id="search-time"/>
        </form>
    </div>
</template>

<script>


export default 
    {
       name: 'search-form' 
    }
</script>

<style scoped>

</style>
