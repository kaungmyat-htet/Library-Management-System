package com.library;

import com.library.model.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Scanner;

public class Launcher {
    static String loginId = null;
    static Scanner scanner = new Scanner(System.in);
    public static void main(String args[])
    {
        Address myAddress = new Address("Sukhumvit Road", "Bangkok", "Bangkok", "10110", "Thailand");
        LocalDate myDob = LocalDate.of(1992, 11, 11);
        Person person = new Person("Geneva", "Gipson", "640-70-1008", myDob, "92830004272", myAddress);
        Librarian librarian = new Librarian("MU00001", "password", AccountStatus.ACTIVE, person);

        librarian.printAccountDetails();

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
        String fName, lName, cid, dob, phone, street, city, zipcode, country;
        int stateId;

        System.out.print("Enter first name: ");
        fName = scanner.next();
        System.out.print("Enter last name: ");
        lName = scanner.next();
        System.out.print("Enter cid: ");
        cid = scanner.next();
        System.out.print("Enter dob: ");
        dob = scanner.next();
        System.out.print("Enter phone: ");
        phone = scanner.next();
        scanner.nextLine();
        System.out.print("Enter street address: ");
        street = scanner.nextLine();
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
        if (stateId > states.size()) {
            System.out.println("Error!!!");
        }

    }

//    @Override
//    public void start(Stage stage) throws Exception {
//        ViewFactory viewFactory = new ViewFactory();
//        viewFactory.showLoginWindow();
//    }
}
