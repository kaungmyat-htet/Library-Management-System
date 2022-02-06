package com.library;

import com.library.view.ViewFactory;
import javafx.application.Application;
import javafx.stage.Stage;

public class Launcher extends Application {
    public static void main(String args[])
    {
//        Address myAddress = new Address("Sukhumvit Road", "Bangkok", "Bangkok", "10110", "Thailand");
//        LocalDate myDob = LocalDate.of(1992, 11, 11);
//        Person person = new Person("Geneva", "Gipson", "640-70-1008", myDob, "92830004272", myAddress);
//        Librarian librarian = new Librarian("MU00001", "password", AccountStatus.ACTIVE, person);
//
//        librarian.printAccountDetails();
//
//        Scanner scanner = new Scanner(System.in);
//        String id, password;
//        System.out.println("Enter account id: ");
//        id = scanner.next();
//        System.out.println("Enter password: ");
//        password = scanner.next();
//
//        Account loginAccount = new Account(id, password);
//
//        librarian.login();
        launch(args);
    }


    @Override
    public void start(Stage stage) throws Exception {
        ViewFactory viewFactory = new ViewFactory();
        viewFactory.showLoginWindow();
    }
}
