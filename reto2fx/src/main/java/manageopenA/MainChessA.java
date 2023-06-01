package manageopenA;

import manageopenB.Conx_B;
import manageopenB.MainChessB;

import java.sql.*;

public class MainChessA {
    public static void main(String[] args) {
        insertCuadro();
    }
    public static void insertOptar() {
        try(Connection cnx = Conx_A.getConnexion()){
            String idfide;
            String nombre;
            Statement stm = cnx.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM jugador");
            while (rs.next()){
                PreparedStatement pstm = cnx.prepareStatement("INSERT INTO optar (idfide, nom_jugador, tipo_premio) VALUES (?, ?, ?)");
                idfide = rs.getString("idfide");
                nombre = rs.getString("nom_jugador");
                pstm.setString(1, idfide);
                pstm.setString(2, nombre);
                pstm.setString(3, "GENERAL");
                pstm.executeUpdate();
                System.out.println(pstm);

                if (rs.getInt("elo") < 2400 && rs.getInt("elo") >= 2200){
                    pstm.setString(3, "SUB2400");
                    pstm.executeUpdate();
                    System.out.println(pstm);

                }else if (rs.getInt("elo") < 2200){
                    pstm.setString(3, "SUB2400");
                    pstm.executeUpdate();
                    System.out.println(pstm);

                    pstm.setString(3, "SUB2200");
                    pstm.executeUpdate();
                    System.out.println(pstm);
                }


                if (rs.getString("club").equalsIgnoreCase("Comunidad Valenciana")){
                    pstm.setString(3, "C.VALENCIANA");
                    pstm.executeUpdate();
                    System.out.println(pstm);
                }

                if (rs.getInt("huesped") == 1){
                    pstm.setString(3, "HOSPEDAJE");
                    pstm.executeUpdate();
                    System.out.println(pstm);
                }

            }


        }catch (SQLException ex){
            throw new RuntimeException(ex);
        }
    }



    // Unico metodo que tambien se llama en la clase MainChssB para calcular el tablon de premios, ya que el proceso es exactamente el mismo
    public static void globalUpdateGanador(Connection cnx, String nombre) throws SQLException {
        PreparedStatement pstm = cnx.prepareStatement("SELECT c.tipo_premio, valor, puesto, ganador FROM cuadro_premios c INNER JOIN optar ON c.tipo_premio=optar.tipo_premio WHERE optar.nom_jugador = ? AND ganador IS NULL ORDER BY valor DESC, c.tipo_premio ASC LIMIT 1");
        pstm.setString(1, nombre);
        ResultSet rsopt = pstm.executeQuery();
        while (rsopt.next()){
            PreparedStatement pstm_up = cnx.prepareStatement("UPDATE cuadro_premios SET ganador = ? WHERE tipo_premio = ? AND valor = ? AND puesto = ?");
            pstm_up.setString(1, nombre);
            pstm_up.setString(2, rsopt.getString("tipo_premio"));
            pstm_up.setInt(3, rsopt.getInt("valor"));
            pstm_up.setInt(4, rsopt.getInt("puesto"));
            pstm_up.executeUpdate();
            System.out.println(pstm_up);
        }
    }


    public static void insertCuadro(){
        try(Connection cnx = Conx_A.getConnexion()){
            Statement stm = cnx.createStatement();
            ResultSet rs = stm.executeQuery("SELECT nom_jugador FROM gen_clasifica ORDER BY posicion ASC");
            while (rs.next()){
                String nombre = rs.getString(1);
                globalUpdateGanador(cnx, nombre);
            }
        }catch (SQLException ex){
            throw new RuntimeException(ex);
        }
    }



}
