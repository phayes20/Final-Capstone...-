package com.techelevator.model;


import java.time.LocalDate;
import java.time.LocalDateTime;


public class CheckIn {
    private int locationId;
    private int userId;
    private String timeStamp;
    private String imgUrl;



    public CheckIn(int locationId, int userId, String timeStamp, String imgUrl) {
        this.locationId = locationId;
        this.userId = userId;
        this.timeStamp = timeStamp;
        this.imgUrl = imgUrl;

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

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }
}
