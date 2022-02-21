package com.library.model;

import java.sql.*;
import java.util.ArrayList;
import java.util.Locale;

public class DbConnect {
    private Connection connection;
    private Statement statement;

    public DbConnect() {
        try {
            String URL = "jdbc:postgresql://localhost:5432/library_system";
            String username = "postgres";
            String password = "2022";
            connection = DriverManager.getConnection(URL, username, password);
            statement = connection.createStatement();
        } catch (SQLException e) {
            System.out.println("Connection Failed!");
            e.printStackTrace();
        }
    }

    public boolean executeQuery(String query) {
        boolean isSuccess = false;
        try {
            int result = statement.executeUpdate(query);
            if (result > 0) {
                System.out.println("Query Executed Successfully.");
                isSuccess = true;
            } else {
                System.out.println("Failed executing sql query.");
            }
        } catch (SQLException e) {
            System.out.println("Error in SQL Execution: " + e);
        }
        return isSuccess;
    }

    public boolean checkInDb(String query) {
        boolean isSuccess = false;
        try {
            ResultSet resultSet = statement.executeQuery(query);
            if (resultSet.next()) {
                isSuccess = true;
            }
            connection.close();
        }
        catch (SQLException e) {
            System.out.println("Error in SQL Execution:" + e);
        }
        return isSuccess;
    }


    public ArrayList<String> getStatesList(String country) {
        ArrayList<String> states = new ArrayList<String>();
        country = country.toUpperCase(Locale.ROOT);
        String state;
        String query = "SELECT * FROM states WHERE country_id = (SELECT id FROM countries WHERE iso_code = '" + country + "');";

        try {
            ResultSet resultSet = statement.executeQuery(query);
            if (!resultSet.isBeforeFirst()) {
                System.out.println("No data found!");
                System.out.println("Please recheck your country code pls");
                return states;
            }
            while (resultSet.next()) {
                state = resultSet.getString("name");
                states.add(state);
            }
        } catch (SQLException e) {
            System.out.println("Error in SQL Execution: " + e);
        }

        return states;
    }

    public int getStateId(String stateName) {
        int stateId = 0;
        stateName.toLowerCase(Locale.ROOT);
        stateName = stateName.substring(0,1).toUpperCase(Locale.ROOT) + stateName.substring(1);
        System.out.println("In Dbconnect: " + stateName);
        String query = "SELECT * FROM states WHERE name = '" + stateName + "';";

        try {
            ResultSet resultSet = statement.executeQuery(query);
            if (resultSet.next()) {
                stateId = resultSet.getInt("id");
            }
        } catch (SQLException e) {
            System.out.println("Error in sql execution: " + e);
        }
        return stateId;
    }

    public int getAddressId() {
        int addressId = 0;
        String query = "SELECT * FROM addresses ORDER BY ID DESC LIMIT 1";
        try {
            ResultSet resultSet = statement.executeQuery(query);
            if (resultSet.next()) {
                addressId = resultSet.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println("Error in sql execution: " + e);
        }
        return addressId;
    }

    public ArrayList<String> getCategoryList() {
        ArrayList<String> categories = new ArrayList<String>();
        String query = "SELECT * FROM categories";
        String category;
        try {
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                category = resultSet.getString("name");
                categories.add(category);
            }

        } catch (SQLException e) {
            System.out.println("Error in getCategoryList: ");
            e.printStackTrace();
        }
        return categories;
    }

    public Book getBook(String isbn) {
        String title, authors, publisher, language;
        int pages, category;
        if (isbn.length() != 13) {
            System.out.println("Please enter a isbn13 format!");
            return null;
        }

        String query = "SELECT * FROM books WHERE isbn = '" + isbn + "';";
        try {
            ResultSet resultSet = statement.executeQuery(query);
            if (resultSet.next()) {
                title = resultSet.getString("title");
                authors = resultSet.getString("authors");
                publisher = resultSet.getString("publisher");
                language = resultSet.getString("language_code");
                pages = resultSet.getInt("number_of_pages");
                category = resultSet.getInt("category_id");
                Book book = new Book(isbn, title, authors, publisher, language, pages, category);
                return book;
            } else {
                System.out.println("There is no book with this isbn. Please check your isbn.");
            }
        } catch (SQLException e) {
            System.out.println("Error in getBook > DbConnect :" + e);
        }
        return null;
    }

    public void closeConnection() {
        try {
            this.connection.close();
        } catch (SQLException e) {
            System.out.println("Error in closing the connection: " + e);
        }

    }
}
