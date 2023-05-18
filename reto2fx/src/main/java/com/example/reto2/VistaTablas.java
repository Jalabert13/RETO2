package com.example.reto2;

import javafx.application.Application;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXMLLoader;
import javafx.geometry.Insets;
import javafx.scene.*;
import javafx.scene.control.*;
import javafx.scene.image.Image;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.stage.Stage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class VistaTablas extends Application {

    private Button boton1;
    private TableView table = new TableView();
    Parent root = FXMLLoader.load(getClass().getResource("menu_tablas.fxml"));

   /* private final ObservableList<jugadores> data =
            FXCollections.observableArrayList(
                    new jugadores("", "", "",,),
                    new jugadores("", "", "",,),
                    new jugadores("", "", "",,),
                    new jugadores("", "", "",,),
                    new jugadores("", "", "",,));*/

    public VistaTablas() throws IOException {

    }


    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage stage) {
        Scene scene = new Scene(root);
        stage.getIcons().add(new Image("file://icon.png"));
        stage.setTitle("Benidorm Chess Open");


        stage.setScene(scene);
        stage.setResizable(false);
        stage.show();
    }





}

