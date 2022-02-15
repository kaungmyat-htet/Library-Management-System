package com.library;

import com.library.model.DbConnect;

import java.util.ArrayList;
import java.util.Scanner;

public class Launcher {
    static String loginId = null;
    static Scanner scanner = new Scanner(System.in);
    public static void main(String args[])
    {
//        Address myAddress = new Address("Sukhumvit Road", "Bangkok", "Bangkok", "10110", "Thailand");
//        LocalDate myDob = LocalDate.of(1992, 11, 11);
//        Person person = new Person("Geneva", "Gipson", "640-70-1008", myDob, "92830004272", myAddress);
//        Librarian librarian = new Librarian("MU00001", "password", AccountStatus.ACTIVE, person);
//
//        librarian.printAccountDetails();

//        String id, password;
//        boolean isLoginSuccess = false;
//
//        Scanner scanner = new Scanner(System.in);
//        System.out.print("Enter account id: ");
//        id = scanner.next();
//        id = loginId.toUpperCase(Locale.ROOT);
//        System.out.print("Enter password: ");
//        password = scanner.next();
//
//        Account loginAccount = new Account(loginId, password);
//        isLoginSuccess = librarian.login();
//        if (isLoginSuccess) {
//            loginId = id;
//        }
//        System.out.println(loginId);

//        DbConnect dbConnect = new DbConnect();
//        ArrayList<String> states = new ArrayList<String>();
//        System.out.print("Enter your country code(Eg- TH for Thailand): ");
//        String countryCode = scanner.next();
//        while (countryCode.length() != 2) {
//            System.out.println("Please enter a two character country code pls!");
//            System.out.print("Enter your country code(##): ");
//            countryCode = scanner.next();
//        }
//
//        countryCode = countryCode.toUpperCase(Locale.ROOT);
//        states = dbConnect.getStatesList(countryCode);
//
//        for (String state : states) {
//            System.out.println(state);
//        }

        inputNewPerson();
//        launch(args);
    }

    public static void inputNewPerson() {
        String fName, lName, cid, dob, phone;
        int addressId;

        System.out.print("Enter first name: ");
        fName = scanner.next();
        System.out.print("Enter last name: ");
        lName = scanner.next();
        System.out.print("Enter cid: ");
        cid = scanner.next();
        System.out.print("Enter dob(yyyy-mm-dd): ");
        dob = scanner.next();
        System.out.print("Enter phone: ");
        phone = scanner.next();
        scanner.nextLine();
        addressId = inputPersonAddress();
        if (addressId == 0) {
            System.out.println("Error in inserting person's address....");
        } else {
            String query = "INSERT INTO persons VALUES ('" + fName + "', '" + lName +"','" +
                    cid + "','" + dob + "', '" + phone + "', " + addressId + ");";
            DbConnect dbConnect = new DbConnect();
            boolean isSuccess = dbConnect.executeQuery(query);
            if (isSuccess) {
                System.out.println("Success inserting person into table.");
            } else {
                System.out.println("Error inserting person into table.");
            }

            inputAccount(cid);
        }

    }

    public static int inputPersonAddress() {
        String street, city, state ,zipcode, country;
        int stateId, addressId = 0;

        System.out.print("Enter street address: ");
        street = scanner.nextLine();
        System.out.print("Enter your zipcode: ");
        zipcode = scanner.nextLine();
        System.out.print("Enter your city: ");
        city = scanner.nextLine();
        System.out.println("Enter your country code(Eg- TH for Thailand): ");
        country = scanner.next();
        while (country.length() != 2) {
            System.out.println("Please enter a two character country code pls!");
            System.out.print("Enter your country code(##): ");
            country = scanner.next();
        }
        System.out.println("Please select your state: ");
        DbConnect dbConnect = new DbConnect();
        ArrayList<String> states = dbConnect.getStatesList(country);
        for (int i = 1; i < states.size(); i++) {
            System.out.println(i + ". " + states.get(i-1));
        }
        stateId = scanner.nextInt();
        scanner.nextLine();
        System.out.println(stateId);
        if (stateId > states.size()) {
            System.out.println("Error!!!");
        } else {
            System.out.println("Yay! Success");
        }
        state = states.get(stateId-1);
        stateId = dbConnect.getStateId(state);
        System.out.println("State id: " + stateId);
        System.out.println("State: " + state);
        System.out.println("zipcode: " + zipcode);
        String query = "INSERT INTO addresses (street, city, state_id, zipcode) VALUES ('"
                        + street + "', '" + city + "', " + stateId + ", '" + zipcode + "');";
        if (dbConnect.executeQuery(query)) {
            System.out.println("Yay! Success in inserting member's address.");
            addressId = dbConnect.getAddressId();
        } else {
            System.out.println("Error inserting member's address.");
        }
        dbConnect.closeConnection();
        return addressId;
    }

    public static void inputAccount(String personId) {
        String id, cid, password, status;
        int statusNum;
        System.out.print("Enter account id: ");
        id = scanner.next();
        System.out.print("Enter password: ");
        password = scanner.next();
        System.out.print("Enter account status(1): ");
        status = scanner.next();
        statusNum = Integer.parseInt(status);
        cid = personId;

        String query = "INSERT INTO accounts VALUES ('" + id + "', '" + cid + "', crypt('" + password
                            + "', gen_salt('bf')), " + statusNum + ");";
        DbConnect dbConnect = new DbConnect();
        boolean isSuccess = dbConnect.executeQuery(query);
        if (isSuccess) {
            System.out.println("Success inserting into accounts");
        } else {
            System.out.println("Error inserting into accounts.");
        }
    }

//    @Override
//    public void start(Stage stage) throws Exception {
//        ViewFactory viewFactory = new ViewFactory();
//        viewFactory.showLoginWindow();
//    }
}
