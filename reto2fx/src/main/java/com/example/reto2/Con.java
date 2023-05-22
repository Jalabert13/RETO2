package com.example.reto2;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

import java.sql.*;

public class Con {

    static Connection cnx;

    static {
        try {
            cnx = getConnexion();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    static Connection getConnexion() throws SQLException {
        String url = "jdbc:mariadb://localhost/Ajedrez?serverTimezone=UTC";
        String user = "root";
        String password = "Admin2022";
        return DriverManager.getConnection(url, user, password);
    }


public static ObservableList<jugadores> obtDatosjug() throws SQLException {
        Connection conn = getConnexion();
    ObservableList<jugadores> datos =
            FXCollections.observableArrayList();
    try {
        PreparedStatement ps = conn.prepareStatement("SELECT * FROM jugadores");
        ResultSet rs = ps.executeQuery();
        while (rs.next()){

            datos.add(new jugadores(rs.getString("idfide"), rs.getString("nom_jugador"), Integer.parseInt(rs.getString("elo")), rs.getString("club"), Integer.parseInt(rs.getString("huesped")), rs.getString("jug_torneo")));
        }
    } catch (SQLException e) {
        throw new RuntimeException(e);
    } catch (NumberFormatException e) {
        throw new RuntimeException(e);
    }
    return datos;
}

}
