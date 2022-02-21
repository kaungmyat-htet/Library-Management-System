package com.library.model;

public class Book {
    private String isbn;
    private String title;
    private String author;
    private String publisher;
    private String languageCode;
    private int numberOfPages;
    private int category;

    public Book(String isbn, String title, String author, String publisher, String languageCode, int numberOfPages, int category) {
        this.isbn = isbn;
        this.title = title;
        this.author = author;
        this.publisher = publisher;
        this.languageCode = languageCode;
        this.numberOfPages = numberOfPages;
        this.category = category;
    }

    public Book(String isbn) {
        this.isbn = isbn;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getLanguageCode() {
        return languageCode;
    }

    public void setLanguageCode(String languageCode) {
        this.languageCode = languageCode;
    }

    public int getNumberOfPages() {
        return numberOfPages;
    }

    public void setNumberOfPages(int numberOfPages) {
        this.numberOfPages = numberOfPages;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public void printBookDetails() {
        System.out.println("Book Details: ");
        System.out.println("Isbn: " + this.isbn);
        System.out.println("Title: " + this.title);
        System.out.println("Author: " + this.author);
        System.out.println("Publisher: " + this.publisher);
        System.out.println("Language Code: " + this.languageCode);
        System.out.println("Number Of Pages: " + this.numberOfPages);
        System.out.println("Category Id: " + this.category);
    }
}
