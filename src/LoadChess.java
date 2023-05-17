import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Types;
import java.util.Scanner;

public class LoadChess {

    public static void csvtorneos(){
        try (Connection cnx = Con.getConnexion()){
            BufferedReader read = new BufferedReader(new FileReader("./import_torneo.csv"));
            PreparedStatement pstm = cnx.prepareStatement("INSERT INTO torneo (nom_torneo, categoria, fec_ini) VALUES (?, ?, ?)");
            String line;
            String field;
            Scanner sc = null;
            while ((line = read.readLine()) != null){
                sc = new Scanner(line);
                sc.useDelimiter("\\|");
                while (sc.hasNext()){
                    field = sc.next();
                    pstm.setString(1, field);
                    field = sc.next();
                    pstm.setString(2, field);
                    field = sc.next();
                    pstm.setString(3, field);

                }
                pstm.executeUpdate();
            }
            pstm.close();
            read.close();

        } catch (SQLException | IOException ex){
            throw new RuntimeException(ex);
        }
        System.out.println("Torneos importados");
    }

    public static void csvjugador(){
        try (Connection cnx = Con.getConnexion()){
            BufferedReader read = new BufferedReader(new FileReader("./import_jugador.csv"));
            PreparedStatement pstm = cnx.prepareStatement("INSERT INTO jugador (idfide, nom_jugador, elo, club, huesped, jug_torneo) VALUES (?, ?, ?, ?, ?, ?)");
            String line;
            String field;
            Scanner sc = null;
            while ((line = read.readLine()) != null){
                sc = new Scanner(line);
                sc.useDelimiter("\\|");
                while (sc.hasNext()){
                    field = sc.next();
                    pstm.setString(1, field);
                    field = sc.next();
                    pstm.setString(2, field);
                    field = sc.next();
                    pstm.setString(3, field);
                    field = sc.next();
                    pstm.setString(4, field);
                    field = sc.next();
                    pstm.setString(5, field);
                    field = sc.next();
                    pstm.setString(6, field);

                }
                pstm.executeUpdate();
            }
            pstm.close();
            read.close();

        } catch (SQLException | IOException ex){
            throw new RuntimeException(ex);
        }
        System.out.println("Jugadores insertados");
    }

    public static void csvclasif(){
        try (Connection cnx = Con.getConnexion()){
            BufferedReader read = new BufferedReader(new FileReader("./import_genclasifica.csv"));
            PreparedStatement pstm = cnx.prepareStatement("INSERT INTO gen_clasifica (nom_jugador, puesto, jug_torneo) VALUES (?, ?, ?)");
            String line;
            String field;
            Scanner sc = null;
            while ((line = read.readLine()) != null){
                sc = new Scanner(line);
                sc.useDelimiter("\\|");
                while (sc.hasNext()){
                    field = sc.next();
                    pstm.setString(1, field);
                    field = sc.next();
                    pstm.setString(2, field);
                    field = sc.next();
                    pstm.setString(3, field);
                }
                pstm.executeUpdate();
            }
            pstm.close();
            read.close();

        } catch (SQLException | IOException ex){
            throw new RuntimeException(ex);
        }
        System.out.println("Clasificacion general importada");
    }

    public static void csvpremios(){
        try (Connection cnx = Con.getConnexion()){
            BufferedReader read = new BufferedReader(new FileReader("./import_premios.csv"));
            PreparedStatement pstm = cnx.prepareStatement("INSERT INTO premios (puesto_premio, nom_torneo, tipo, valor, nom_jugador) VALUES (?, ?, ?, ?, ?)");
            String line;
            String field;
            Scanner sc = null;
            while ((line = read.readLine()) != null){
                sc = new Scanner(line);
                sc.useDelimiter("\\|");
                while (sc.hasNext()){
                    field = sc.next();
                    pstm.setString(1, field);
                    field = sc.next();
                    pstm.setString(2, field);
                    field = sc.next();
                    pstm.setString(3, field);
                    field = sc.next();
                    pstm.setString(4, field);
                    field = sc.next();
                    if (!field.equalsIgnoreCase("NULL")){
                        pstm.setString(5, field);
                    }else{
                        pstm.setNull(5, Types.NULL);
                    }
                }
                pstm.executeUpdate();
            }
            pstm.close();
            read.close();

        } catch (SQLException | IOException ex){
            throw new RuntimeException(ex);
        }
        System.out.println("Premios importados");
    }
    public static void main(String[] args) {

    }
}
