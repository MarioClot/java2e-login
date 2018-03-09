/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.fje.daw2;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author sergi
 */
public class Jugador implements Serializable{
    private String nom;
    private String password;
    private ArrayList peces;

//    public boolean isCasat() {
//        return casat;
//    }

//    public void setCasat(boolean casat) {
//        this.casat = casat;
//    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Jugador(String nom, String password) {
        this.nom = nom;
        this.password = password;
    }

}