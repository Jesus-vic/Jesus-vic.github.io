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

/**
 *
 * @author Admin
 */

@Entity
public class Horario implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_horario;
    private String horario_ini;
    private String horario_fin;

    public Horario() {
    }

    public Horario(int id_horario, String horario_ini, String horario_fin) {
        this.id_horario = id_horario;
        this.horario_ini = horario_ini;
        this.horario_fin = horario_fin;
    }

    public int getId_horario() {
        return id_horario;
    }

    public void setId_horario(int id_horario) {
        this.id_horario = id_horario;
    }

    public String getHorario_ini() {
        return horario_ini;
    }

    public void setHorario_ini(String horario_ini) {
        this.horario_ini = horario_ini;
    }

    public String getHorario_fin() {
        return horario_fin;
    }

    public void setHorario_fin(String horario_fin) {
        this.horario_fin = horario_fin;
    }
    
}
