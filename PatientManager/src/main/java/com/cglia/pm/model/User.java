package com.cglia.pm.model;

public class User {
	private Integer userId;
    private String email;
    private String password;
    
    // Constructors, getters, and setters

    public User() {
        // Default constructor
    }

    public User(String email, String password) {
        this.userId = userId;
        this.email = email;
        this.password = password;
    }

    // Getters and setters for other fields
    
    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}