package com.library.model;

public class Account {
    private String id;
    private String password;
    private AccountStatus status;
    private Person person;

    public Account(String id, String password, AccountStatus status, Person person) {
        this.id = id;
        this.password = password;
        this.status = status;
        this.person = person;
    }

    public Account(String id, String password) {
        this.id = id;
        this.password = password;
    }

    public Account(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public AccountStatus getStatus() {
        return status;
    }

    public void setStatus(AccountStatus status) {
        this.status = status;
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    public void printAccountDetails() {
        System.out.println("Account's ID: " + this.id);
        System.out.println("Account's password: " + this.password);
        System.out.println("Account's status: " + this.status);
        this.person.printPerson();
    }

    public boolean login() {
        boolean isSuccess = false;
        DbConnect dbConnect = new DbConnect();
        String query = "SELECT * FROM accounts where id = '" + getId() + "' AND password = crypt('" + getPassword() + "', password);";
        isSuccess = dbConnect.executeLoginQuery(query);
        if (isSuccess) {
            System.out.println("Yay! Login Success");
        } else {
            System.out.println("Login Failed! Please Check your id and password pls.");
        }
        return isSuccess;
    }
}
