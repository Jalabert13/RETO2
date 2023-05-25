package com.example.reto2;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.*;
import javafx.scene.control.*;
import javafx.scene.image.Image;
import javafx.stage.Stage;

import java.io.IOException;



public class HelloApplication extends Application {

    private TableView table = new TableView();
    Parent root = FXMLLoader.load(getClass().getResource("fxml/home.fxml"));

    public HelloApplication() throws IOException {
    }


    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage stage) {
        Scene scene = new Scene(root);

        stage.getIcons().add(new Image("file:icon.png"));

        stage.setTitle("Benidorm Chess Open");


        stage.setScene(scene);
        stage.setResizable(false);
        stage.show();
    }


}

