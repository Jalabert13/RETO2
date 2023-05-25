package com.example.reto2;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;

import java.io.IOException;


public class MenuController  {

    @FXML
    protected void boton_menu(ActionEvent event) throws IOException {
        Stage stage = new Stage();

        Parent root = FXMLLoader.load(getClass().getResource("fxml/menu_inicial.fxml"));
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
    protected void boton_opena(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/VistaOpenA.fxml"));
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
    protected void boton_openb(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/VistaOpenB.fxml"));
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
    protected void boton_atras(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/home.fxml"));
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
    protected void boton_juga(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/JugadoresA.fxml"));
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
    protected void boton_jugb(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/JugadoresB.fxml"));
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
    protected void boton_prema(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/PremiosA.fxml"));
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
    protected void boton_premb(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/PremiosB.fxml"));
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
    protected void boton_opta(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/OpcionesA.fxml"));
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
    protected void boton_optb(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/OpcionesB.fxml"));
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
}