/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 *
 * @author Admin
 */

@Entity
public class Corte implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_corte;
    private String tipo_corte;
    @ManyToOne
    @JoinColumn(name = "id_corte")
    private Cliente clien2;

    public Corte() {
    }

    public Corte(int id_corte, String tipo_corte) {
        this.id_corte = id_corte;
        this.tipo_corte = tipo_corte;
    }

    public int getId_corte() {
        return id_corte;
    }

    public void setId_corte(int id_corte) {
        this.id_corte = id_corte;
    }

    public String getTipo_corte() {
        return tipo_corte;
    }

    public void setTipo_corte(String tipo_corte) {
        this.tipo_corte = tipo_corte;
    }
    
}
