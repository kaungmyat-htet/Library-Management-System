package com.library.model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Scanner;

public class Librarian extends Account {
    public Librarian(String id, String password, AccountStatus status, Person person) {
        super(id, password, status, person);
    }

    public Librarian(String id) {
        super(id);
    }

    public void registerMember() {
        Person newMember = enterPersonDetail();
        boolean isSuccess = executeAddPersonQuery(newMember);
        if (isSuccess) {
            Address memberAddress = enterMemberAddress();
//            addMemberAddress();
        } else {
            System.out.println("Failed executing insert query!");
        }

    }

    public void addNewBook(Scanner scanner) {
        Book newBook = enterBookDetail(scanner);
        String query = "INSERT INTO books VALUES ('" + newBook.getIsbn() + "', '" + newBook.getTitle() +
                "', ' " + newBook.getAuthor() + "', '" + newBook.getPublisher() + "', '" +newBook.getLanguageCode()
                + "', " + newBook.getNumberOfPages() + ", " + newBook.getCategory() + ");";
        DbConnect dbConnect = new DbConnect();
        dbConnect.executeQuery(query);
    }

    private Book enterBookDetail(Scanner scanner) {
        String isbn, title, author, publisher, langCode, noOfPages,cat;
        int categoryId, numberOfPages;
        System.out.print("Enter book isbn: ");
        isbn = scanner.next();
        System.out.print("Enter book title: ");
        scanner.nextLine();
        title = scanner.nextLine();
        System.out.print("Enter book author/s: ");
        author = scanner.nextLine();
        System.out.print("Enter publisher: ");
        publisher = scanner.nextLine();
        System.out.print("Enter language code: ");
        langCode = scanner.next();
        System.out.print("Enter number of pages: ");
        noOfPages = scanner.next();
        numberOfPages = Integer.parseInt(noOfPages);
        System.out.println("Please book's category: ");
        DbConnect dbConnect = new DbConnect();
        ArrayList<String> categories = dbConnect.getCateogoryList();
        for (int i = 1; i < categories.size(); i++) {
            System.out.println(i + "." + categories.get(i-1));
        }
        cat = scanner.next();
        categoryId = Integer.parseInt(cat);
        categoryId = categoryId;
        if (categoryId > categories.size() || categoryId < 0) {
            System.out.println("Error!!!!");
        } else {
            System.out.println(isbn + ", " + title + ", " + author + ", " + publisher + ", " + langCode + ", " + numberOfPages +", " + categoryId);
            Book book = new Book(isbn, title, author, publisher, langCode, numberOfPages, categoryId);
            return book;
        }
        return null;
    }

    private boolean executeAddPersonQuery(Person newMember) {
        boolean isExecuted = false;
        String personQuery = "INSERT INTO persons VALUES ('" + newMember.getFirstName() + "', '" +
                newMember.getLastName() + "', '" + newMember.getCitizenId() + "', '" +
                newMember.getDateOfBirth() + "', '" + newMember.getTelephone() + "';";

        DbConnect dbConnect = new DbConnect();
        isExecuted = dbConnect.executeQuery(personQuery);

        return isExecuted;
    }

    private Person enterPersonDetail() {
        String firstName, lastName, citizenId, dob, telephone;
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter first name: ");
        firstName = scanner.next();
        System.out.print("Enter last name: ");
        lastName = scanner.next();
        System.out.print("Enter citizen id: ");
        citizenId = scanner.next();
        System.out.print("Enter date of birth: ");
        dob = scanner.next();
        LocalDate dateOfBirth = LocalDate.parse(dob);
        System.out.print("Enter telephone: ");
        telephone = scanner.next();

        return new Person(firstName, lastName, citizenId, dateOfBirth, telephone);
    }

    private Address enterMemberAddress() {
        String street, city, state, country, zipCode;
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter street address: ");
        street = scanner.next();
        System.out.print("Enter city: ");
        city = scanner.next();
        System.out.print("Enter state: ");
        state = scanner.next();
        System.out.print("Enter zipcode: ");
        zipCode = scanner.next();
        System.out.print("Enter country: ");
        country = scanner.next();

        return new Address(street,city,state,zipCode,country);
    }

//    private boolean addMemberAddress() {
//        boolean isExecuted = false;
//        String personQuery = "INSERT INTO address VALUES ('" + newMember.getFirstName() + "', '" +
//                newMember.getLastName() + "', '" + newMember.getCitizenId() + "', '" +
//                newMember.getDateOfBirth() + "', '" + newMember.getTelephone() + "';";
//
//        DbConnect dbConnect = new DbConnect();
//        isExecuted = dbConnect.executeQuery(personQuery);
//
//        return isExecuted;
//    }
}
