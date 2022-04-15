import axios from 'axios';

const http = axios.create({
    baseURL: "http://localhost:8080"
});


export default {

    getLocations() {
        return http.get('/location');
    },
    getLocation(locationID){
        return http.get(`location/${locationID}`)
    },
    
}