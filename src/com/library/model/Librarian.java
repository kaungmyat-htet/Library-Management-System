package com.library.model;

public class Librarian extends Account {
    public Librarian(String id, String password, AccountStatus status, Person person) {
        super(id, password, status, person);
    }
}
