import java.sql.*;
public class Ajedrez {
    public static void main(String[] args) {
        showValencia();
    }
    private static void showValencia(){
        try (Connection cnx = Con.getConnexion()) {
            Statement stm = cnx.createStatement();
            String query = "SELECT j.nom_jugador, j.club, g.puesto, j.jug_torneo FROM jugador j INNER JOIN gen_clasifica g ON j.nom_jugador=g.nom_jugador WHERE club LIKE '%Comunidad Valen%' AND j.jug_torneo = 'A' ORDER BY g.puesto ASC";
            System.out.println(stm.execute(query));
            //works 10-05-2023

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}

