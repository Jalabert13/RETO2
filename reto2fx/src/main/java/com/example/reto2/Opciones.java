package com.example.reto2;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class Opciones {
    private final StringProperty idfide;
    private final StringProperty nom_jugador;
    private final StringProperty tipo_premio;

    public Opciones(String idfide, String nom_jugador, String tipo_premio){
        this.idfide = new SimpleStringProperty(idfide);
        this.nom_jugador = new SimpleStringProperty(nom_jugador);
        this.tipo_premio = new SimpleStringProperty(tipo_premio);
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

    public String getTipo_premio() {
        return tipo_premio.get();
    }

    public StringProperty tipo_premioProperty() {
        return tipo_premio;
    }

    public void setTipo_premio(String tipo_premio) {
        this.tipo_premio.set(tipo_premio);
    }
}
