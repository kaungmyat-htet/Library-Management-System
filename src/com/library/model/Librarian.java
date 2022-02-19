package com.library.model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Locale;
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

    public void editBook() {
        System.out.print("Enter book isbn: ");
        Scanner scanner = new Scanner(System.in);
        String isbn = scanner.next();
        getBookDetail(isbn);
        System.out.println("What do you want to edit this book?");
        System.out.println("1. Edit details");
        System.out.println("2. Delete book");
        System.out.println("3. Cancel");
        String choice = scanner.next();
        int task = Integer.parseInt(choice);
        switch (task) {
            case 1 -> System.out.println("----Edit Detail of the book");
            case 2 -> {
                System.out.print("Delete this book. Are you sure about this?(y/n)");
                String confirm = scanner.next();
                confirm = confirm.toLowerCase(Locale.ROOT);
                if (!confirm.equals("y")) {
                    System.out.println("Return to main page.");
                } else {
                    deleteBook(isbn);
                }
            }
        }
    }

    public void deleteBook(String isbn) {
        String query = "DELETE FROM books WHERE isbn = '" + isbn + "';";
        DbConnect dbConnect = new DbConnect();
        boolean isDeleted = dbConnect.executeQuery(query);
        if (isDeleted) {
            System.out.println("Deleted successfully.");
        } else {
            System.out.println("Error deleting the book.");
        }
    }

    public void getBookDetail(String isbn) {
        DbConnect dbConnect = new DbConnect();
        Book newBook = dbConnect.getBook(isbn);
        if (newBook != null) {
            newBook.printBookDetails();
        }
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
