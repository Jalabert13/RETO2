package com.example.reto2;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.stage.Stage;
import javafx.scene.control.TableView;
import javafx.scene.control.TableColumn;
import manageopenA.Conx_A;
import manageopenB.Conx_B;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Controller{
    protected void switchScene(ActionEvent event, Stage stage, Parent root) {
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
    protected void boton_menu(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/menu_inicial.fxml"));
        switchScene(event, stage, root);
    }


    @FXML
    protected void boton_opena(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/VistaOpenA.fxml"));
        switchScene(event, stage, root);
    }


    @FXML
    protected void boton_openb(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/VistaOpenB.fxml"));
        switchScene(event, stage, root);
    }

    @FXML
    protected void boton_atras(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/home.fxml"));
        switchScene(event, stage, root);
    }
    @FXML
    protected void boton_juga(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/JugadoresA.fxml"));
        switchScene(event, stage, root);
    }

    @FXML
    protected void boton_jugb(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/JugadoresB.fxml"));
        switchScene(event, stage, root);
    }

    @FXML
    protected void boton_prema(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/PremiosA.fxml"));
        switchScene(event, stage, root);
    }

    @FXML
    protected void boton_premb(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/PremiosB.fxml"));
        switchScene(event, stage, root);
    }

    @FXML
    protected void boton_opta(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/OpcionesA.fxml"));
        switchScene(event, stage, root);
    }

    @FXML
    protected void boton_optb(ActionEvent event) throws IOException {
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/OpcionesB.fxml"));
        switchScene(event, stage, root);
    }


    // --- Cargar y visualizar datos
    
    

    @FXML
    private TableView<GlobalJugador> tablaJug;
    @FXML
    private TableColumn<GlobalJugador, String> idfide;
    @FXML
    private TableColumn<GlobalJugador, String> nom_jugador;
    @FXML
    private TableColumn<GlobalJugador, Integer> elo;
    @FXML
    private TableColumn<GlobalJugador, String> club;
    
    

    private void init_tablas(){
        idfide.setCellValueFactory(new PropertyValueFactory<>("idfide"));
        nom_jugador.setCellValueFactory(new PropertyValueFactory<>("nom_jugador"));
        elo.setCellValueFactory(new PropertyValueFactory<>("elo"));
        club.setCellValueFactory(new PropertyValueFactory<>("club"));
    }
    
    
    private static ObservableList<GlobalJugador> fetchJugadores(Connection cnx){
        ObservableList<GlobalJugador> jA = FXCollections.observableArrayList();
        try(cnx){
            ResultSet rs = cnx.createStatement().executeQuery("SELECT idfide, nom_jugador, elo, club FROM jugador");
            while (rs.next()){
                jA.add(new GlobalJugador(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4)));
            }
        }catch (SQLException ex){
            throw new RuntimeException(ex);
        }
        return jA;
    }
    
    @FXML
    protected void cargar_A(ActionEvent event) throws SQLException {
        init_tablas();
        tablaJug.setItems(fetchJugadores(Conx_A.getConnexion()));
    }

    @FXML
    protected void cargar_B(ActionEvent event) throws SQLException {
        init_tablas();
        tablaJug.setItems(fetchJugadores(Conx_B.getConnexion()));
    }


}