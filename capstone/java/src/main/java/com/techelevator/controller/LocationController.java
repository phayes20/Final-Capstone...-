package com.techelevator.controller;

import com.techelevator.dao.LocationDao;
import com.techelevator.model.Location;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin

@RequestMapping("/location")
public class LocationController {

    public LocationController(LocationDao locationDao) {
        this.locationDao = locationDao;
    }

    private LocationDao locationDao;

//    @TODO might need to change list to a wrapper class
    @RequestMapping(method = RequestMethod.GET)
    public List<Location> locations(){
        return locationDao.getAllLocations();
    }

    @RequestMapping(value = "/search/{keyword}", method = RequestMethod.GET)
    public List<Location> keywordLocations(@PathVariable String keyword) {
        return locationDao.getLocationByKeyword(keyword);
    }

    @RequestMapping(value = "/time/{time}/{day}", method = RequestMethod.GET)
    public List<Location> timeLocations(@PathVariable String time, @PathVariable String day) {
        return locationDao.getLocationByTime(time, day);
    }

    @RequestMapping(value = "/{locationId}", method = RequestMethod.GET)
    public  Location idLocations(@PathVariable Long locationId) {
        return locationDao.getLocationById(locationId);
    }

    @RequestMapping(value = "/category/{category}", method = RequestMethod.GET)
    public List<Location> categoryLocations(@PathVariable String category) {
        return locationDao.getLocationByCategory(category);
    }

//    @TODO
//    @RequestMapping(value = "/create", method = RequestMethod.PUT)
//    public boolean createLocations (@PathVariable String name, @PathVariable String description, @PathVariable String sundayHourOpen,
//                                    @PathVariable String sundayHourClosed, @PathVariable String mondayHourOpen,
//                                    @PathVariable String mondayHourClosed, @PathVariable String tuesdayHourOpen,
//                                    @PathVariable String tuesdayHourClosed, @PathVariable String wednesdayHourOpen,
//                                    @PathVariable String wednesdayHourClosed, @PathVariable String thursdayHourOpen,
//                                    @PathVariable String thursdayHourClosed,  @PathVariable String fridayHourOpen,
//                                    @PathVariable String fridayHourClosed, @PathVariable String saturdayHourOpen,
//                                    @PathVariable String saturdayHourClosed, @PathVariable String socialMedia,
//                                    @PathVariable String categories) {
//
//    }
}
