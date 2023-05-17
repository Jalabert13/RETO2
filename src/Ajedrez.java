import javax.xml.transform.Result;
import java.sql.*;
public class Ajedrez {
    public static void main(String[] args) {
        insertVal();
    }
    private static void insertVal(){
        try (Connection cnx = Con.getConnexion()) {
            Statement stm = cnx.createStatement();
            String query_a = "SELECT j.nom_jugador, j.club, g.puesto, j.jug_torneo FROM jugador j INNER JOIN gen_clasifica g ON j.nom_jugador=g.nom_jugador WHERE club LIKE '%Comunidad Valen%' AND j.jug_torneo = 'A' ORDER BY g.puesto ASC LIMIT 8";
            ResultSet rs_a = stm.executeQuery(query_a);

            PreparedStatement pstm;
            String name;
            //La variable i se utiliza para asignar de manera ascendente a cada jugador el puesto de su premio, ya que la consulta los muestra de manera ascendente
            //Insercion C.Val, Torneo A
            int i = 1;
            for (; rs_a.next() && i<=8; i++){
                name = rs_a.getString("nom_jugador");
                pstm = cnx.prepareStatement("UPDATE premios SET nom_jugador = ? WHERE puesto_premio = ? AND nom_torneo = 'A' AND tipo = 'C.VALENCIANA'");
                pstm.setString(1, name);
                pstm.setInt(2, i);
                pstm.executeUpdate();
                System.out.println("Jugador insertado - torneo A");
            }
            System.out.println("---------------");


            String query_b = "SELECT j.nom_jugador, j.club, g.puesto, j.jug_torneo FROM jugador j INNER JOIN gen_clasifica g ON j.nom_jugador=g.nom_jugador WHERE club LIKE '%Comunidad Valen%' AND j.jug_torneo = 'B' ORDER BY g.puesto ASC LIMIT 8";
            ResultSet rs_b = stm.executeQuery(query_b);
            //Insercion C.Val, Torneo B
            int j = 1;
            for (; rs_b.next() && j<=8; j++){
                name = rs_b.getString("nom_jugador");
                pstm = cnx.prepareStatement("UPDATE premios SET nom_jugador = ? WHERE puesto_premio = ? AND nom_torneo = 'B' AND tipo = 'C.VALENCIANA'");
                pstm.setString(1, name);
                pstm.setInt(2, j);
                pstm.executeUpdate();
                System.out.println("Jugador insertado - torneo B");
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    private static void insertbyElo(int elo){
        try(Connection cnx = Con.getConnexion()){

        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }





}

