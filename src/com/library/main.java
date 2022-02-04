package com.library;

import com.library.model.Member;

import java.time.LocalDate;

public class main {
    public static void main(String args[])
    {
        LocalDate dateOfBirth = LocalDate.of(1990, 2, 22);
        LocalDate expireDate = LocalDate.of(2023, 4, 19);
        Member newMember = new Member("345", "Johnny", "8783", dateOfBirth, "098834", expireDate);

        newMember.printUser();
    }
}
