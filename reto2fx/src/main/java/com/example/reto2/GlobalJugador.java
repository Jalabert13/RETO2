package com.example.reto2;


public class GlobalJugador {
    private String idfide;
    private String nom_jugador;
    private String elo;
    private String club;

    public String getIdfide() {
        return idfide;
    }

    public String getNom_jugador() {
        return nom_jugador;
    }

    public String getElo() {
        return elo;
    }

    public String getClub() {
        return club;
    }

    public void setIdfide(String idfide) {
        this.idfide = idfide;
    }

    public void setNom_jugador(String nom_jugador) {
        this.nom_jugador = nom_jugador;
    }

    public void setElo(String elo) {
        this.elo = elo;
    }

    public void setClub(String club) {
        this.club = club;
    }

    public GlobalJugador(String idfide, String nom_jugador, String elo, String club) {
        this.idfide = idfide;
        this.nom_jugador = nom_jugador;
        this.elo = elo;
        this.club = club;
    }




}
