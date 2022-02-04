package com.library.model;

import java.sql.*;

public class DbConnect {
    private Connection connection;
    private Statement statement;

    public DbConnect() {
        try {
            String URL = "jdbc:postgresql://localhost:5432/library_system";
            String username = "postgres";
            String password = "250011";
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
                connection.close();
            } else {
                System.out.println("Failed executing sql query.");
            }
        } catch (SQLException e) {
            System.out.println("Error in SQL Execution: " + e);
        }
        return isSuccess;
    }

    public boolean executeLoginQuery(String query) {
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
}
