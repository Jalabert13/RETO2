package com.example.reto2;

import manageopenA.Conx_A;
import manageopenA.LoadChessA;
import manageopenB.LoadChessB;

import java.sql.Connection;
import java.sql.SQLException;

public class ReloadData {
    public static boolean bootCsv(){
        try {
            LoadChessA.csvjugador();
            LoadChessB.csvjugador();

            LoadChessA.csvpremios();
            LoadChessB.csvpremios();
        }catch (RuntimeException ex){
            return false;
        }
        return true;
    }

    public static void truncateOptar(Connection cnx) throws SQLException {
        try(cnx){
            cnx.createStatement().executeUpdate("TRUNCATE TABLE optar");
        }
    }

    public static void truncateCuadro(Connection cnx) throws SQLException{
        try(cnx){
            cnx.createStatement().executeUpdate("TRUNCATE TABLE cuadro_premios");
        }
    }

    public static void truncateClasif(Connection cnx) throws SQLException{
        try(cnx){
            cnx.createStatement().executeUpdate("TRUNCATE TABLE gen_clasifica");
        }
    }


}
