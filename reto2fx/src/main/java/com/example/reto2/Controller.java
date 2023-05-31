package com.example.reto2;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.collections.transformation.FilteredList;
import javafx.collections.transformation.SortedList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.stage.Modality;
import javafx.stage.Stage;
import manageopenA.Conx_A;
import manageopenA.MainChessA;
import manageopenB.Conx_B;
import manageopenB.MainChessB;

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
    protected void boton_juga(ActionEvent event) throws IOException{
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/JugadoresA.fxml"));
        switchScene(event, stage, root);
    }

    @FXML
    protected void boton_jugb(ActionEvent event) throws IOException{
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
    protected void boton_optA(ActionEvent event) throws IOException{
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/OpcionesA.fxml"));
        switchScene(event, stage, root);
    }

    @FXML
    protected void boton_optB(ActionEvent event) throws IOException{
        Stage stage = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("fxml/OpcionesB.fxml"));
        switchScene(event, stage, root);
    }

    @FXML
    public void importData(ActionEvent event) throws IOException {
        final Stage dialog = new Stage();
        dialog.initModality(Modality.APPLICATION_MODAL);
        dialog.setResizable(false);
        Parent root = FXMLLoader.load(getClass().getResource("fxml/DataPopUp.fxml"));
        Scene dialog_scene = new Scene(root);
        dialog.setScene(dialog_scene);
        if (ImportData.importAllCsv()){
            dialog.show();
        }
    }



    // --- Cargar y visualizar datos en tablas de la interfaz


    //Jugadores
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
    @FXML
    private TextField findJug;

    private void initTabJugadores(){
        idfide.setCellValueFactory(new PropertyValueFactory<>("idfide"));
        nom_jugador.setCellValueFactory(new PropertyValueFactory<>("nom_jugador"));
        elo.setCellValueFactory(new PropertyValueFactory<>("elo"));
        club.setCellValueFactory(new PropertyValueFactory<>("club"));
    }
    
    
    private static ObservableList<GlobalJugador> fetchJugadores(Connection cnx){
        ObservableList<GlobalJugador> juglist = FXCollections.observableArrayList();
        try(cnx){
            ResultSet rs = cnx.createStatement().executeQuery("SELECT idfide, nom_jugador, elo, club FROM jugador");
            while (rs.next()){
                juglist.add(new GlobalJugador(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4)));
            }
        }catch (SQLException ex){
            throw new RuntimeException(ex);
        }
        return juglist;
    }
    
    @FXML
    protected void cargarJugA(ActionEvent event) throws SQLException {
        ObservableList<GlobalJugador> juglist = fetchJugadores(Conx_A.getConnexion());
        initTabJugadores();
        tablaJug.setItems(juglist);

        //Codigo para filtrar mediante textfield
        FilteredList<GlobalJugador> filterJuglist = new FilteredList<>(juglist, b -> true);
        findJug.textProperty().addListener((observable, oldValue, newValue) ->{
            filterJuglist.setPredicate((GlobalJugador) -> {
                if (newValue.isEmpty() || newValue.isBlank()){
                    return true;
                }

                String keyword = newValue.toLowerCase();

                if (GlobalJugador.getIdfide().toLowerCase().contains(keyword)){
                    return true;
                }else if (GlobalJugador.getNom_jugador().toLowerCase().contains(keyword)){
                    return true;
                }else if (Integer.toString(GlobalJugador.getElo()).toLowerCase().contains(keyword)){
                    return true;
                }else return GlobalJugador.getClub().toLowerCase().contains(keyword);

            });
        });

        SortedList<GlobalJugador> sortedJug = new SortedList<>(filterJuglist);
        sortedJug.comparatorProperty().bind(tablaJug.comparatorProperty());
        tablaJug.setItems(sortedJug);
    }



    @FXML
    protected void cargarJugB(ActionEvent event) throws SQLException {
        ObservableList<GlobalJugador> juglist = fetchJugadores(Conx_B.getConnexion());
        initTabJugadores();
        tablaJug.setItems(juglist);

        //Codigo para filtrar mediante textfield
        FilteredList<GlobalJugador> filterJuglist = new FilteredList<>(juglist, b -> true);
        findJug.textProperty().addListener((observable, oldValue, newValue) ->{
            filterJuglist.setPredicate((GlobalJugador) -> {
                if (newValue.isEmpty() || newValue.isBlank()){
                    return true;
                }

                String keyword = newValue.toLowerCase();

                if (GlobalJugador.getIdfide().toLowerCase().contains(keyword)){
                    return true;
                }else if (GlobalJugador.getNom_jugador().toLowerCase().contains(keyword)){
                    return true;
                }else if (Integer.toString(GlobalJugador.getElo()).toLowerCase().contains(keyword)){
                    return true;
                }else return GlobalJugador.getClub().toLowerCase().contains(keyword);

            });
        });

        SortedList<GlobalJugador> sortedJug = new SortedList<>(filterJuglist);
        sortedJug.comparatorProperty().bind(tablaJug.comparatorProperty());
        tablaJug.setItems(sortedJug);
    }



    //Optar
    @FXML
    private TableView<Opciones> tablaOpc;
    @FXML
    private TableColumn<Opciones, String> opc_idfide;
    @FXML
    private TableColumn<Opciones, String> opc_nomjugador;
    @FXML
    private TableColumn<Opciones, String> opc_premio;

    private void initTabOpta(){
        opc_idfide.setCellValueFactory(new PropertyValueFactory<>("idfide"));
        opc_nomjugador.setCellValueFactory(new PropertyValueFactory<>("nom_jugador"));
        opc_premio.setCellValueFactory(new PropertyValueFactory<>("tipo_premio"));
    }

    private static ObservableList<Opciones> fetchOptar(Connection cnx){
        ObservableList<Opciones> li_opc = FXCollections.observableArrayList();
        try(cnx){
            ResultSet rs = cnx.createStatement().executeQuery("SELECT * FROM optar");
            while (rs.next()){
                li_opc.add(new Opciones(rs.getString(1), rs.getString(2), rs.getString(3)));
            }
        }catch (SQLException ex){
            throw new RuntimeException(ex);
        }
        return li_opc;
    }


    //Para cargar a lo que las tablas "opta", se hace truncate tanto al principio como al final de la funcion para que cada vez que se carguen los datos, se recalcule la tabla por si se hace algun cambio en los jugadoes"
    @FXML
    protected void cargarOptA(ActionEvent event) throws SQLException {
        MainChessA.truncateOptar();
        initTabOpta();
        MainChessA.insertOptar();
        tablaOpc.setItems(fetchOptar(Conx_A.getConnexion()));
        MainChessA.truncateOptar();
    }

    @FXML
    protected void cargarOptB(ActionEvent event) throws SQLException {
        MainChessB.truncateOptar();
        initTabOpta();
        MainChessB.insertOptar();
        tablaOpc.setItems(fetchOptar(Conx_B.getConnexion()));
        MainChessB.truncateOptar();
    }

    //Cuadro premios
    @FXML
    private TableView<CuadroPremios> tablaPre;
    @FXML
    private TableColumn<CuadroPremios, String> prem_tipo;
    @FXML
    private TableColumn<CuadroPremios, Integer> prem_puesto;
    @FXML
    private TableColumn<CuadroPremios, Integer> prem_valor;
    @FXML
    private TableColumn<CuadroPremios, String> prem_ganador;

    private void initCuadro(){
        prem_tipo.setCellValueFactory(new PropertyValueFactory<>("tipo_premio"));
        prem_puesto.setCellValueFactory(new PropertyValueFactory<>("puesto"));
        prem_valor.setCellValueFactory(new PropertyValueFactory<>("valor"));
        prem_ganador.setCellValueFactory(new PropertyValueFactory<>("ganador"));
    }

    public static ObservableList<CuadroPremios> fetchCuadro(Connection cnx){
        ObservableList<CuadroPremios> li_cuadro = FXCollections.observableArrayList();
        try(cnx){
            ResultSet rs = cnx.createStatement().executeQuery("SELECT * FROM cuadro_premios");
            while (rs.next()){
                li_cuadro.add(new CuadroPremios(rs.getString(1), rs.getInt(2), rs.getInt(3), rs.getString(4)));
            }
        }catch (SQLException ex){
            throw new RuntimeException(ex);
        }
        return li_cuadro;
    }

    @FXML
    public void cargarCuadA(ActionEvent actionEvent) throws SQLException {
        initCuadro();
        tablaPre.setItems(fetchCuadro(Conx_A.getConnexion()));

    }

    @FXML
    public void cargarCuadB(ActionEvent actionEvent) throws SQLException {
        initCuadro();
        tablaPre.setItems(fetchCuadro(Conx_B.getConnexion()));
    }



    //Dialogo para actualizar jugador

    @FXML
    private TextField inputNomJug;
    @FXML
    private ChoiceBox choiceAtributo;


    public void updateBtn(ActionEvent event) throws IOException{
        final Stage update_dialog = new Stage();
        update_dialog.initModality(Modality.APPLICATION_MODAL);
        update_dialog.setResizable(false);
        Parent root = FXMLLoader.load(getClass().getResource("fxml/UpdateJugador.fxml"));
        Scene dialog_scene = new Scene(root);
        update_dialog.setScene(dialog_scene);
        update_dialog.show();
    }

    public void applyUpdate(ActionEvent event) throws IOException{
        String nomjug = inputNomJug.getText();
        String field = (String) choiceAtributo.getValue();

    }



}