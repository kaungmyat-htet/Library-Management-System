package com.library.model;

import java.time.LocalDate;
import java.util.List;

public class Member extends Person{
    private LocalDate expireDate;
    private List<Book> rentedBooks;

    public Member(String id, String name, String citizenId, LocalDate dateOfBirth, String telephone, LocalDate expireDate) {
        super(id, name, citizenId, dateOfBirth, telephone);
        this.expireDate = expireDate;
    }

    public LocalDate getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(LocalDate expireDate) {
        this.expireDate = expireDate;
    }

    public void printUser()
    {
        System.out.println("Member's ID: " + super.getId());
        System.out.println("Member's name: " + super.getName());
        System.out.println("Member's Citizen ID: " + super.getCitizenId());
        System.out.println("Member's Date of Birth: " + super.getDateOfBirth());
        System.out.println("Member's Telephone: " + super.getTelephone());
        System.out.println("Member's Expire Date: " + getExpireDate());
    }
}
