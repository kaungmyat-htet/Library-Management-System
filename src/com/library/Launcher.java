package com.library;

import com.library.model.*;

import java.time.LocalDate;
import java.util.Locale;
import java.util.Scanner;

public class Launcher {
    static String loginId = null;
    public static void main(String args[])
    {
        Address myAddress = new Address("Sukhumvit Road", "Bangkok", "Bangkok", "10110", "Thailand");
        LocalDate myDob = LocalDate.of(1992, 11, 11);
        Person person = new Person("Geneva", "Gipson", "640-70-1008", myDob, "92830004272", myAddress);
        Librarian librarian = new Librarian("MU00001", "password", AccountStatus.ACTIVE, person);

        librarian.printAccountDetails();

        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter account id: ");
        loginId = scanner.next();
        loginId = loginId.toUpperCase(Locale.ROOT);
        System.out.print("Enter password: ");
        String password = scanner.next();

        Account loginAccount = new Account(loginId, password);
        librarian.login();
        System.out.println(loginId);

//        launch(args);
    }


//    @Override
//    public void start(Stage stage) throws Exception {
//        ViewFactory viewFactory = new ViewFactory();
//        viewFactory.showLoginWindow();
//    }
}
