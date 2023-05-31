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

    public static void truncateOptar() throws SQLException {
        try(Connection cnx = Conx_B.getConnexion()){
            cnx.createStatement().executeUpdate("TRUNCATE TABLE optar");
        }
    }

    public static void insertCuadro(){
        try(Connection cnx = Conx_B.getConnexion()){
            Statement stm = cnx.createStatement();
            ResultSet rs = stm.executeQuery("SELECT nom_jugador FROM gen_clasifica ORDER BY posicion ASC");
            while (rs.next()){
                String nombre = rs.getString(1);
                MainChessA.globalSetGanadores(cnx, nombre); //Se llama al metodo del main A para actualizar los ganadores ya que el proceso es exactamente el mismo
            }
        }catch (SQLException ex){
            throw new RuntimeException(ex);
        }
    }




}
