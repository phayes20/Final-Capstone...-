package com.techelevator.dao;

public interface LocationDao {
    List<Location> getAllLocations();
    Location getLocationById(Long locationId);
    List<Location> getLocationByKeyword(String keyword);
    List<Location> get();


}
