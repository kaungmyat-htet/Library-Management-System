package com.library.model;

import java.time.LocalDate;

public class Person {
    private String firstName;
    private String lastName;
    private String citizenId;
    private LocalDate dateOfBirth;
    private String telephone;
    private Address address;

    public Person(String firstName, String lastName, String citizenId, LocalDate dateOfBirth, String telephone, Address address) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.citizenId = citizenId;
        this.dateOfBirth = dateOfBirth;
        this.telephone = telephone;
        this.address = address;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
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

    public void printPerson() {
        System.out.println("First Name: " + this.firstName);
        System.out.println("Last Name: " + this.lastName);
        System.out.println("Citizen ID: " + this.citizenId);
        System.out.println("Date of Birth: " + this.dateOfBirth.toString());
        System.out.println("Telephone: " + this.telephone);
        this.address.printAddress();
    }
}
