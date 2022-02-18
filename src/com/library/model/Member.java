package com.library.model;

import java.time.LocalDate;

public class Member extends Account{
    private LocalDate expireDate;

    public Member(String id, String password, AccountStatus status, Person person) {
        super(id, password, status, person);
    }

    public Member(String id) {
        super(id);
    }

    public LocalDate getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(LocalDate expireDate) {
        this.expireDate = expireDate;
    }

    public void printUser()
    {
        printAccountDetails();
        System.out.println("Membership's Expire Date" + this.expireDate.toString());
    }
}
