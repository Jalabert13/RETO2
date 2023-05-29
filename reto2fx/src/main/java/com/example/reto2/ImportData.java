package com.example.reto2;

import manageopenA.LoadChessA;
import manageopenA.MainChessA;
import manageopenB.LoadChessB;
import manageopenB.MainChessB;

public class ImportData {
    public static boolean importAllCsv(){
        try {
            LoadChessA.csvjugador();
            LoadChessA.csvpremios();
            LoadChessA.csvtablon();
            MainChessA.insertOptar();

            LoadChessB.csvjugador();
            LoadChessB.csvpremios();
            LoadChessB.csvtablon();
            MainChessB.insertOptar();
        }catch (RuntimeException ex){
            return false;
        }
        return true;
    }
}
