import axios from 'axios';

// const http = axios.create({
//     baseURL: "http://localhost:8080"
// });


export default {

    getLocations() {
        return axios.get('/location');
    },
    getLocation(locationID){
        return axios.get(`/location/${locationID}`)
    },
    
}