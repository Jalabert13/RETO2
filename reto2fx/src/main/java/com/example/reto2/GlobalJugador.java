package com.example.reto2;
import javafx.beans.property.IntegerProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class GlobalJugador {
    private final StringProperty idfide;
    private final StringProperty nom_jugador;
    private final IntegerProperty elo;
    private final StringProperty club;

    public GlobalJugador (String idfide, String nom_jugador, int elo, String club){
        this.idfide = new SimpleStringProperty(idfide);
        this.nom_jugador = new SimpleStringProperty(nom_jugador);
        this.elo = new SimpleIntegerProperty(elo);
        this.club = new SimpleStringProperty(club);
    }

    public String getIdfide() {
        return idfide.get();
    }

    public StringProperty idfideProperty() {
        return idfide;
    }

    public void setIdfide(String idfide) {
        this.idfide.set(idfide);
    }

    public String getNom_jugador() {
        return nom_jugador.get();
    }

    public StringProperty nom_jugadorProperty() {
        return nom_jugador;
    }

    public void setNom_jugador(String nom_jugador) {
        this.nom_jugador.set(nom_jugador);
    }

    public int getElo() {
        return elo.get();
    }

    public IntegerProperty eloProperty() {
        return elo;
    }

    public void setElo(int elo) {
        this.elo.set(elo);
    }

    public String getClub() {
        return club.get();
    }

    public StringProperty clubProperty() {
        return club;
    }

    public void setClub(String club) {
        this.club.set(club);
    }
}
