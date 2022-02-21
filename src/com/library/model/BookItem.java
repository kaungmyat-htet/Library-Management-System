package com.library.model;

import java.util.Date;

public class BookItem extends Book{
    private String barcode;
    private Date borrowedDate;
    private Date dueDate;
    private float price;
    private BookFormat format;
    private BookStatus status;
    private Date dateOfPurchased;
    private Date publicationDate;

    public BookItem(String isbn, String barcode, Date borrowedDate, Date dueDate, float price, BookFormat format, BookStatus status, Date dateOfPurchased, Date publicationDate) {
        super(isbn);
        this.barcode = barcode;
        this.borrowedDate = borrowedDate;
        this.dueDate = dueDate;
        this.price = price;
        this.format = format;
        this.status = status;
        this.dateOfPurchased = dateOfPurchased;
        this.publicationDate = publicationDate;
    }
}
