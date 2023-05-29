package manageopenA;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Types;
import java.util.Scanner;
public class LoadChessA {

    public static void csvtablon(){
        try (Connection cnx = Conx_A.getConnexion()){
            BufferedReader read = new BufferedReader(new FileReader("./tablonA.csv"));
            PreparedStatement pstm = cnx.prepareStatement("INSERT INTO cuadro_premios (tipo_premio, puesto, valor, ganador) VALUES (?, ?, ?, ?)");
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
                    if (!field.equalsIgnoreCase("DEFAULT")){
                        pstm.setString(4, field);
                    }else{
                        pstm.setNull(4, Types.NULL);
                    }
                }
                pstm.executeUpdate();
                System.out.println(pstm);
            }
            pstm.close();
            read.close();

        } catch (SQLException | IOException ex){
            throw new RuntimeException(ex);
        }

    }

    public static void csvjugador(){
        try (Connection cnx = Conx_A.getConnexion()){
            BufferedReader read = new BufferedReader(new FileReader("./jugadoresA.csv"));
            PreparedStatement pstm = cnx.prepareStatement("INSERT INTO jugador (nom_jugador, elo, idfide, club, huesped) VALUES (?, ?, ?, ?, ?)");
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
                }
                pstm.executeUpdate();
                System.out.println(pstm);
            }
            pstm.close();
            read.close();

        } catch (SQLException | IOException ex){
            throw new RuntimeException(ex);
        }

    }

    public static void csvclasif(){
        try (Connection cnx = Conx_A.getConnexion()){
            BufferedReader read = new BufferedReader(new FileReader("./clasA.csv"));
            PreparedStatement pstm = cnx.prepareStatement("INSERT INTO gen_clasifica (posicion, nom_jugador) VALUES (?, ?)");
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
                }
                pstm.executeUpdate();
                System.out.println(pstm);
            }
            pstm.close();
            read.close();

        } catch (SQLException | IOException ex){
            throw new RuntimeException(ex);
        }

    }

    public static void csvpremios(){
        try (Connection cnx = Conx_A.getConnexion()){
            BufferedReader read = new BufferedReader(new FileReader("./premiosA.csv"));
            PreparedStatement pstm = cnx.prepareStatement("INSERT INTO Premio (tipo) VALUES (?)");
            String line;
            String field;
            Scanner sc = null;
            while ((line = read.readLine()) != null){
                sc = new Scanner(line);
                while (sc.hasNext()){
                    field = sc.next();
                    pstm.setString(1, field);
                }
                pstm.executeUpdate();
                System.out.println(pstm);
            }
            pstm.close();
            read.close();
        } catch (SQLException | IOException ex){
            throw new RuntimeException(ex);
        }

    }




}
