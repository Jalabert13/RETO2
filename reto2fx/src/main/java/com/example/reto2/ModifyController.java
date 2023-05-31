package com.example.reto2;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import manageopenA.Conx_A;
import manageopenB.Conx_B;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

//Controlador para la actualizacion e insercion de jugadores
public class ModifyController {

    //Dialogo para actualizar jugador
    @FXML
    private TextField inputNomJug;
    @FXML
    private ChoiceBox choiceAtributo;
    @FXML
    private ChoiceBox choiceTorneo;
    @FXML
    private TextField inputNewValor;
    @FXML
    private Label errorUpdateLabel;


    private static void runUpdate(String nomjug, String field, String valor, Connection cnx) throws SQLException {
        String query = "UPDATE jugador SET " + field + " = ? WHERE nom_jugador = ?";
        PreparedStatement pstm = cnx.prepareStatement(query);
        pstm.setString(1, valor);
        pstm.setString(2, nomjug);
        pstm.executeUpdate();
        pstm.close();
    }

    @FXML
    protected void applyUpdateBtn(ActionEvent event){
        errorUpdateLabel.setText(null);
        String nomjug = inputNomJug.getText();
        String field = (String) choiceAtributo.getValue();
        String torneo = (String) choiceTorneo.getValue();
        String valor = inputNewValor.getText();
        if (torneo.equals("OPEN A")){
            try(Connection cnx = Conx_A.getConnexion()){
                runUpdate(nomjug, field, valor, cnx);
            }catch (SQLException ex){
                errorUpdateLabel.setText("Error al actualizar!");
                throw new RuntimeException(ex);
            }
        }else if (torneo.equals("OPEN B")){
            try(Connection cnx = Conx_B.getConnexion()){
                runUpdate(nomjug, field, valor, cnx);
            }catch (SQLException ex){
                errorUpdateLabel.setText("Error al actualizar!");
                throw new RuntimeException(ex);
            }
        }
    }

    //Dialogo de insercion de jugador
    @FXML
    public TextField newNombre;
    @FXML
    public TextField newIdFide;
    @FXML
    public TextField newElo;
    @FXML
    public TextField newClub;
    @FXML
    public ChoiceBox newTorneo;
    @FXML
    public CheckBox newHuesped;
    @FXML
    public Label errorNew;

    public void newInsertBtn(ActionEvent event) {
        errorNew.setText(null);
        String nomjug = newNombre.getText();
        String idfide = newIdFide.getText();
        String club = newClub.getText();
        String torneo = (String) newTorneo.getValue();
        int elo = Integer.parseInt(newElo.getText());
        int huesped = 0;
        if (newHuesped.isSelected()){
            huesped = 1;
        }

        if (torneo.equals("OPEN A")){
            try(Connection cnx = Conx_A.getConnexion()){
                runInsert(nomjug, idfide, club, elo, huesped, cnx);
            }catch (SQLException ex){
                errorNew.setText("Error al insertar");
                throw new RuntimeException(ex);
            }
        }else if (torneo.equals("OPEN B")){
            try(Connection cnx = Conx_B.getConnexion()){
                runInsert(nomjug, idfide, club, elo, huesped, cnx);
            }catch (SQLException ex){
                errorNew.setText("Error al insertar");
                throw new RuntimeException(ex);
            }
        }
        newNombre.clear();
        newIdFide.clear();
        newClub.clear();
        newElo.clear();
        newHuesped.setSelected(false);
    }

    private static void runInsert(String nomjug, String idfide, String club, int elo, int huesped, Connection cnx) throws SQLException {
        PreparedStatement pstm = cnx.prepareStatement("INSERT INTO jugador (idfide, nom_jugador, elo, huesped, club) VALUES (?, ?, ?, ?, ?)");
        pstm.setString(1, idfide);
        pstm.setString(2, nomjug);
        pstm.setInt(3, elo);
        pstm.setInt(4, huesped);
        pstm.setString(5, club);
        pstm.executeUpdate();
        pstm.close();
    }
}
