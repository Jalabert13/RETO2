package com.example.reto2;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

import java.sql.*;
import java.util.Scanner;

public class mysqlconnect {
    static Connection cnx;
    static Scanner sc;

    static {
        try {
            cnx = getConnexion();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    static Connection getConnexion() throws SQLException {
        String url = "jdbc:mysql://localhost/ajedrez?serverTimezone=UTC";
        return DriverManager.getConnection(url);
    }



    }

