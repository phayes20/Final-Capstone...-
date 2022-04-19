package com.techelevator.model;


import java.time.LocalDate;
import java.time.LocalDateTime;


public class CheckIn {
    private int locationId;
    private int userId;
    private String timeStamp;



    public CheckIn(int locationId, int userId, String timeStamp) {
        this.locationId = locationId;
        this.userId = userId;
        this.timeStamp = timeStamp;

    }

    public CheckIn(){}

    public int getLocationId() {
        return locationId;
    }

    public void setLocationId(int locationId) {
        this.locationId = locationId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(String timeStamp) {
        this.timeStamp = timeStamp;
    }
}
