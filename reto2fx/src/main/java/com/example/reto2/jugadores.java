package com.example.reto2;




public class jugadores {


    String idfide,nom_jugador,club;
    int elo, huesped;

    public jugadores(String idfide, String nomJugador, Integer elo, String club, Integer huesped, String jugTorneo) {
    }

    public String getIdfide() {
        return idfide;
    }

    public void setIdfide(String idfide) {
        this.idfide = idfide;
    }

    public String getNom_jugador() {
        return nom_jugador;
    }

    public void setNom_jugador(String nom_jugador) {
        this.nom_jugador = nom_jugador;
    }

    public String getClub() {
        return club;
    }

    public void setClub(String club) {
        this.club = club;
    }

    public int getElo() {
        return elo;
    }

    public void setElo(int elo) {
        this.elo = elo;
    }

    public int getHuesped() {
        return huesped;
    }

    public void setHuesped(int huesped) {
        this.huesped = huesped;
    }
}











