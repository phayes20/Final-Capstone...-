package com.techelevator.dao;

import com.techelevator.model.Location;
import com.techelevator.model.User;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcLocationDao implements LocationDao {

    private final JdbcTemplate jdbcTemplate;
    public JdbcLocationDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }





@Override
    List<Location> getAllLocations() {
    List<Location> locations = new ArrayList<>();

    String sql = " SELECT * FROM locations ";
    SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
    while (results.next()) {
        Location location = mapRowToLocation(results);
        locations.add(location);
    }
    return locations;
}




    @Override
    Location getLocationById(Long locationId);

    @Override
    List<Location> getLocationByKeyword(String keyword);

    @Override
    List<Location>  getLocationByTime (String time);

    @Override
    List<Location>  getLocationByCategory (String category);

    @Override
    boolean createLocation (String username , String description , String sundayHourOpen , String sundayHourClosed , String mondayHourOpen , String mondayHourClosed , String tuesdayHourOpen
            , String tuesdayHourClosed , String wednesdayHourOpen , String wednesdayHourClosed , String thursdayHourOpen , String thursdayHourClosed , String fridayHourOpen , String fridayHourClosed ,
                            String saturdayHourOpen ,  String saturdayHourClosed , String socialMedia , List<String> categories );


    private Location mapRowToLocations(SqlRowSet rs) {
        Location location = new Location();
        location.setLocationId(rs.getLong("location_id"));

        return location;
    }
}
