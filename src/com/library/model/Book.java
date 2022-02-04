package com.library.model;

public class Book {
    private String isbn;
    private String title;
    private String author;
    private Genre genre;
    private int stock;

    public Book(String isbn, String title, String author, Genre genre, int stock) {
        this.isbn = isbn;
        this.title = title;
        this.author = author;
        this.genre = genre;
        this.stock = stock;
    }
}
