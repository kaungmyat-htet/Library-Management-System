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

    public void closeConnection() {
        try {
            this.connection.close();
        } catch (SQLException e) {
            System.out.println("Error in closing the connection: " + e);
        }

    }
}
