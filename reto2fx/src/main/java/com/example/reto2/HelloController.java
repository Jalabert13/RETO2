package com.example.reto2;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.stage.Stage;

import java.io.IOException;
import java.sql.*;
import java.util.Scanner;
import java.util.logging.Level;


public class HelloController {
    @FXML
    private Label welcomeText;

    @FXML
    protected void boton1(ActionEvent event) throws IOException {

       Stage stage = new Stage();

        Parent root = FXMLLoader.load(getClass().getResource("menu_tablas.fxml"));
        Scene scene = new Scene(root);
        stage.getIcons().add(new Image("file:icon.png"));
        stage.setTitle("Benidorm Chess Open");


        stage.setScene(scene);
        stage.setResizable(false);
        stage.show();

        Node source = (Node) event.getSource();
         stage = (Stage) source.getScene().getWindow();
        stage.close();


    }

    @FXML
    protected void boton3(ActionEvent event) throws IOException {

        Stage stage = new Stage();

        Parent root = FXMLLoader.load(getClass().getResource("hello-view.fxml"));
        Scene scene = new Scene(root);
        stage.getIcons().add(new Image("file:icon.png"));
        stage.setTitle("Benidorm Chess Open");


        stage.setScene(scene);
        stage.setResizable(false);
        stage.show();

        Node source = (Node) event.getSource();
        stage = (Stage) source.getScene().getWindow();
        stage.close();


    }

    static Connection getConnexion() throws SQLException {
        String url = "jdbc:mysql://localhost/ajedrez?serverTimezone=UTC";
        String user = "root";
        String password = "";
        return DriverManager.getConnection(url, user, password);
    }




}