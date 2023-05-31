package com.example.reto2;

import manageopenA.LoadChessA;
import manageopenB.LoadChessB;

public class ImportData {
    public static boolean importAllCsv(){
        try {
            LoadChessA.csvjugador();
            LoadChessB.csvjugador();

            LoadChessA.csvpremios();
            LoadChessB.csvpremios();
        }catch (RuntimeException ex){
            return false;
        }
        return true;
    }
}
