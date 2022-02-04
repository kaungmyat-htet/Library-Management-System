package com.library.model;

import java.time.LocalDate;

public class Admin extends Person{
    private String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Admin(String id, String name, String citizenId, LocalDate dateOfBirth, String telephone, String password) {
        super(id, name, citizenId, dateOfBirth, telephone);
        this.password = password;
    }
}
