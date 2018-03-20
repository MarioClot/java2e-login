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
public class FiguraBean implements Serializable{
    private String nom;
    private String valor;

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

    public FiguraBean(String nom, String valor) {
        this.nom = nom;
        this.valor = valor;
    }

    public FiguraBean(){

    }

}