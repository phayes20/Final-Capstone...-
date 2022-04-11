package com.techelevator.dao;

import com.techelevator.model.Location;
import com.techelevator.model.User;
import com.techelevator.model.UserNotFoundException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcLocationDao implements LocationDao {

    private final JdbcTemplate jdbcTemplate;
    public JdbcLocationDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }





    @Override
    public List<Location> getAllLocations() {
        List<Location> locations = new ArrayList<>();

        String sql = " SELECT * FROM locations ";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
     while (results.next()) {
          Location location = mapRowToLocations(results);
          locations.add(location);
         }
         return locations;
    }


    @Override
    public Location getLocationById(Long locationId) {
        String sql = "SELECT * FROM locations WHERE location_id = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, locationId);
        if(results.next()) {
            return mapRowToLocations(results);
        }
        return null;
    }


    @Override
    public List<Location> getLocationByKeyword(String keyword) {
        List<Location> locations = new ArrayList<>();
        String sql = "SELECT * FROM locations WHERE name ILIKE '%?%';";
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql, keyword);
        if (rowSet.next()) {
            locations.add(mapRowToLocations(rowSet));
        }
        return null;
    }


    @Override
    public List<Location>  getLocationByTime (String time, String day) {
        List<Location> locations = new ArrayList<>();
        String sql = "SELECT * FROM locations Where '?' >= ?_hour_open and  '?' < ?_hour_closed;";
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql, time, day, time, day);
        if (rowSet.next()) {
            locations.add(mapRowToLocations(rowSet));
        }
        return null;
    }


    @Override
    public List<Location>  getLocationByCategory (String category) {
        List<Location> locations = new ArrayList<>();
        String sql = "SELECT * FROM locations WHERE category ILIKE '%?%';";
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql, category);
        if (rowSet.next()) {
            locations.add(mapRowToLocations(rowSet));
        }
        return null;
    }


    @Override
    public boolean createLocation (String name, String description, String sundayHourOpen, String sundayHourClosed,
                            String mondayHourOpen , String mondayHourClosed, String tuesdayHourOpen,
                            String tuesdayHourClosed, String wednesdayHourOpen, String wednesdayHourClosed,
                            String thursdayHourOpen, String thursdayHourClosed, String fridayHourOpen, String fridayHourClosed,
                            String saturdayHourOpen,  String saturdayHourClosed, String socialMedia, String categories) {

        // create location
        String insertLocation = "insert into locations (categories, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed, wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed, social_media, name) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";

        try {
            jdbcTemplate.queryForObject(insertLocation, Integer.class, description, sundayHourOpen, sundayHourClosed, mondayHourOpen, mondayHourClosed, tuesdayHourOpen, tuesdayHourClosed, wednesdayHourOpen, wednesdayHourClosed, thursdayHourOpen, thursdayHourClosed, fridayHourOpen, fridayHourClosed, saturdayHourOpen, saturdayHourClosed, socialMedia, name);
        } catch (DataAccessException e) {
            return false;
        }
        return true;
    }


    private Location mapRowToLocations(SqlRowSet rs) {
        Location location = new Location();
        location.setLocationId(rs.getLong("location_id"));
        location.setCategories(rs.getString("categories"));
        location.setDescription(rs.getString("description"));
        location.setSundayHourOpen(rs.getString("sunday_hour_open"));
        location.setSundayHourClosed(rs.getString("sunday_hour_closed"));
        location.setMondayHourOpen(rs.getString("monday_hour_open"));
        location.setMondayHourClosed(rs.getString("monday_hour_closed"));
        location.setTuesdayHourOpen(rs.getString("tuesday_hour_open"));
        location.setTuesdayHourClosed(rs.getString("tuesday_hour_closed"));
        location.setWednesdayHourOpen(rs.getString("wednesday_hour_open"));
        location.setWednesdayHourClosed(rs.getString("wednesday_hour_closed"));
        location.setThursdayHourOpen(rs.getString("thursday_hour_open"));
        location.setThursdayHourClosed(rs.getString("thursday_hour_closed"));
        location.setFridayHourOpen(rs.getString("friday_hour_open"));
        location.setFridayHourClosed(rs.getString("friday_hour_closed"));
        location.setSaturdayHourOpen(rs.getString("saturday_hour_open"));
        location.setSaturdayHourClosed(rs.getString("saturday_hour_closed"));
        location.setSocialMedia(rs.getString("social_media"));
        location.setName(rs.getString("name"));
        return location;
    }
}
