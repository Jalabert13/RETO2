package com.example.reto2;

public class jugadores {

    String idfide,nom_jugador,club;
    int elo, huesped;
    enum jug_torneo {
        A, B
    };

    public jugadores(String idfide, String nom_jugador, String club, int elo, int huesped) {
        this.idfide = idfide;
        this.nom_jugador = nom_jugador;
        this.club = club;
        this.elo = elo;
        this.huesped = huesped;
    }
}
