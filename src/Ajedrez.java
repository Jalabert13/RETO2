import java.sql.*;
public class Ajedrez {
public static void main(String[] args) {
    }
    private static void insertVal(){
        try (Connection cnx = Conx.getConnexion()) {
            Statement stm = cnx.createStatement();
            String query_a = "SELECT j.nom_jugador, j.club, g.puesto, j.jug_torneo FROM jugador j INNER JOIN gen_clasifica g ON j.nom_jugador=g.nom_jugador WHERE club LIKE '%Comunidad Valen%' AND j.jug_torneo = 'A' ORDER BY g.puesto ASC LIMIT 8";
            ResultSet rs_a = stm.executeQuery(query_a);

            PreparedStatement pstm;
            String name;
            //La variable i se utiliza para asignar de manera ascendente a cada jugador el puesto de su premio, ya que la consulta los muestra de manera ascendente
            //Insercion C.Val, Torneo A
            int i = 1;
            for (; rs_a.next(); i++){
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
            for (; rs_b.next(); j++){
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

    //Inserción de premios por elo de jugador
    private static void insertbyElo(String torneo){
        try(Connection cnx = Conx.getConnexion()) {

            // TORNEO A
            // -------------- SUB 2400 -------------- //
            PreparedStatement pstm2400 = cnx.prepareStatement( "SELECT g.puesto, g.nom_jugador, j.elo, j.jug_torneo FROM jugador j INNER JOIN gen_clasifica g ON j.nom_jugador=g.nom_jugador WHERE (elo BETWEEN 1900 AND 2399) AND (j.jug_torneo LIKE ?) ORDER BY elo DESC LIMIT 5;");
            pstm2400.setString(1, torneo);
            ResultSet rs_a_s2400 = pstm2400.executeQuery();

            // -------------- SUB 2200 -------------- //
            PreparedStatement pstm2200 = cnx.prepareStatement( "SELECT g.puesto, g.nom_jugador, j.elo, j.jug_torneo FROM jugador j INNER JOIN gen_clasifica g ON j.nom_jugador=g.nom_jugador WHERE (elo BETWEEN 1900 AND 2199) AND (j.jug_torneo LIKE ?) ORDER BY elo DESC LIMIT 5;");
            pstm2200.setString(1, torneo);
            ResultSet rs_a_s2200 = pstm2200.executeQuery();

            // TORNEO B
            // -------------- SUB 1800 -------------- //
            PreparedStatement pstm1800 = cnx.prepareStatement( "SELECT g.puesto, g.nom_jugador, j.elo, j.jug_torneo FROM jugador j INNER JOIN gen_clasifica g ON j.nom_jugador=g.nom_jugador WHERE (elo BETWEEN 0 AND 1799) AND (j.jug_torneo LIKE ?) ORDER BY elo DESC LIMIT 5;");
            pstm1800.setString(1, torneo);
            ResultSet rs_a_s1800 = pstm1800.executeQuery();

            // -------------- SUB 1600 -------------- //
            PreparedStatement pstm1600 = cnx.prepareStatement( "SELECT g.puesto, g.nom_jugador, j.elo, j.jug_torneo FROM jugador j INNER JOIN gen_clasifica g ON j.nom_jugador=g.nom_jugador WHERE (elo BETWEEN 0 AND 1599) AND (j.jug_torneo LIKE ?) ORDER BY elo DESC LIMIT 5;");
            pstm1600.setString(1, torneo);
            ResultSet rs_a_s1600 = pstm1600.executeQuery();

            // -------------- SUB 1400 -------------- //
            PreparedStatement pstm1400 = cnx.prepareStatement( "SELECT g.puesto, g.nom_jugador, j.elo, j.jug_torneo FROM jugador j INNER JOIN gen_clasifica g ON j.nom_jugador=g.nom_jugador WHERE (elo BETWEEN 0 AND 1399) AND (j.jug_torneo LIKE ?) ORDER BY elo DESC LIMIT 5;");
            pstm1400.setString(1, torneo);
            ResultSet rs_a_s1400 = pstm1400.executeQuery();

            PreparedStatement[] preparedSets = {pstm2400, pstm2200, pstm1800, pstm1600, pstm1400};
            ResultSet[] resultsSets = {rs_a_s2400, rs_a_s2200, rs_a_s1800, rs_a_s1600, rs_a_s1400};
            String[] subTorneos = {"SUB2400", "SUB2200", "SUB1800", "SUB1600", "SUB1400"};
            String name;

            for (int j = 0; j < preparedSets.length; j++) {
                for (int i = 0; resultsSets[j].next(); i++){
                    name = resultsSets[j].getString("nom_jugador");
                    preparedSets[j] = cnx.prepareStatement("UPDATE premios SET nom_jugador = ? WHERE puesto_premio = ? AND nom_torneo = ? AND tipo = ?");
                    preparedSets[j].setString(1, name);
                    preparedSets[j].setInt(2, i);
                    preparedSets[j].setString(3, torneo);
                    preparedSets[j].setString(4, subTorneos[j]);
                    preparedSets[j].executeUpdate();
                    System.out.println("Jugador insertado - " + preparedSets[j]);
                }
            }


        } catch (SQLException ex){
            throw new RuntimeException(ex);
        }
    }


    //Insercion premios por clasificacion general, introduciendo por parametro el nombre del torneo
    private static void insertGen(String torneo){
        try(Connection cnx = Conx.getConnexion()){
            PreparedStatement pstm = cnx.prepareStatement("SELECT nom_jugador FROM gen_clasifica WHERE jug_torneo = ? ORDER BY puesto ASC LIMIT 25");
            pstm.setString(1, torneo);
            ResultSet rs = pstm.executeQuery();

            String name;
            int i = 1;
            for (; rs.next(); i++){
                name = rs.getString("nom_jugador");
                pstm = cnx.prepareStatement("UPDATE premios SET nom_jugador = ? WHERE puesto_premio = ? AND nom_torneo = ? AND tipo = 'GENERAL'");
                pstm.setString(1, name);
                pstm.setInt(2, i);
                pstm.setString(3, torneo);
                pstm.executeUpdate();
                System.out.println("Jugador insertado");
            }

        }catch (SQLException ex){
            throw new RuntimeException(ex);
        }
    }





}

