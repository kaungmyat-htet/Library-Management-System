package com.library.model;

import java.time.LocalDate;

public class Person {
    private String id;
    private String name;
    private String citizenId;
    private LocalDate dateOfBirth;
    private String telephone;

    public Person(String id, String name, String citizenId, LocalDate dateOfBirth, String telephone) {
        this.id = id;
        this.name = name;
        this.citizenId = citizenId;
        this.dateOfBirth = dateOfBirth;
        this.telephone = telephone;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCitizenId() {
        return citizenId;
    }

    public void setCitizenId(String citizenId) {
        this.citizenId = citizenId;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }
}
