package com.model;

public class LoginData {    
    
    String email,pword;

    public String getEmail() {
        return email;
    }

    public String getPword() {
        return pword;
    }
    
    public LoginData(String email, String pword) {
        this.email = email;
        this.pword = pword;
    }
}