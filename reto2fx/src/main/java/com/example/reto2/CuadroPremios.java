package com.example.reto2;

import javafx.beans.property.IntegerProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;
public class CuadroPremios {
    private final StringProperty tipo_premio;
    private final IntegerProperty puesto;
    private final IntegerProperty valor;
    private final StringProperty ganador;
   public CuadroPremios(String tipo_premio, int puesto, int valor, String ganador){
       this.tipo_premio = new SimpleStringProperty(tipo_premio);
       this.puesto = new SimpleIntegerProperty(puesto);
       this.valor = new SimpleIntegerProperty(valor);
       this.ganador = new SimpleStringProperty(ganador);
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

    public int getPuesto() {
        return puesto.get();
    }

    public IntegerProperty puestoProperty() {
        return puesto;
    }

    public void setPuesto(int puesto) {
        this.puesto.set(puesto);
    }

    public int getValor() {
        return valor.get();
    }

    public IntegerProperty valorProperty() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor.set(valor);
    }

    public String getGanador() {
        return ganador.get();
    }

    public StringProperty ganadorProperty() {
        return ganador;
    }

    public void setGanador(String ganador) {
        this.ganador.set(ganador);
    }
}
