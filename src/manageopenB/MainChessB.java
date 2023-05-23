package manageopenB;

import manageopenA.Conx_A;
import manageopenA.LoadChessA;
import manageopenA.MainChessA;

import java.sql.*;

public class MainChessB {
    public static void main(String[] args) {

    }
    public static void insertOptar() {
        try(Connection cnx = Conx_B.getConnexion()){
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

                if (rs.getInt("elo") < 1800 && rs.getInt("elo") >= 1600){
                    pstm.setString(3, "SUB1800");
                    pstm.executeUpdate();
                    System.out.println(pstm);
                }else if (rs.getInt("elo") < 1600 && rs.getInt("elo") >= 1400){
                    pstm.setString(3, "SUB1600");
                    pstm.executeUpdate();
                    System.out.println(pstm);

                }else if (rs.getInt("elo") < 1400){
                    pstm.setString(3, "SUB1400");
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

    public static void insertCuadro(){
        try(Connection cnx = Conx_B.getConnexion()){
            Statement stm = cnx.createStatement();
            ResultSet rs = stm.executeQuery("SELECT nom_jugador FROM gen_clasifica ORDER BY posicion ASC");
            while (rs.next()){
                String nombre = rs.getString(1);

                PreparedStatement pstm = cnx.prepareStatement("SELECT c.tipo_premio, valor, puesto, ganador FROM cuadro_premios c INNER JOIN optar ON c.tipo_premio=optar.tipo_premio WHERE optar.nom_jugador = ? AND ganador IS NULL ORDER BY valor DESC LIMIT 1");
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

        }catch (SQLException ex){
            throw new RuntimeException(ex);
        }
    }


}
