package com.example.reto2;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.image.Image;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.util.ResourceBundle;
import java.util.Scanner;
import java.util.logging.Level;




public class HelloController {
    static Connection cnx;

    static {
        try {
            cnx = getConnexion();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    @FXML
    private VBox principal_vbox;

    @FXML
    private HBox principal_hbox2;

    @FXML
    private Button boton3;

    @FXML
    private HBox principal_hbox;

    @FXML
    private TableView<jugadores> tabla_jugadores;

    @FXML
    private TableColumn<jugadores, String> col_idfide;

    @FXML
    private TableColumn<jugadores, String> col_nom_jugador;

    @FXML
    private TableColumn<jugadores, Integer> col_elo;

    @FXML
    private TableColumn<jugadores, String> col_club;

    @FXML
    private TableColumn<jugadores, Integer> col_huesped;

    @FXML
    private TableColumn<jugadores, Enum> col_jug_torneo;


    @FXML
    private HBox principal_hbox1;

    @FXML
    private Button boton2;


    static Connection getConnexion() throws SQLException {
        String url = "jdbc:mariadb://localhost/Ajedrez?serverTimezone=UTC";
        String user = "root";
        String password = "Admin2022";
        return DriverManager.getConnection(url, user, password);
    }
    @FXML
    protected void boton_menu(ActionEvent event) throws IOException {
        Stage stage = new Stage();

        Parent root = FXMLLoader.load(getClass().getResource("menu_inicial.fxml"));
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
    protected void  boton2(ActionEvent event) throws IOException, SQLException {
        Statement stm = getConnexion().createStatement();
        ResultSet rs = stm.executeQuery("SELECT * from jugador");
        while (rs.next()) {
            for (int i = 1; i <= rs.getMetaData().getColumnCount(); i++) {
                System.out.print(rs.getString(i) + "\t");
            }
            System.out.println();
        }
    }

    @FXML
    protected void boton_inicio(ActionEvent event) throws IOException {

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
    @FXML
    protected void boton_jugadores(ActionEvent event) throws IOException {

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




}