/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

/**
 *
 * @author Admin
 */

@Entity
public class Barbero extends Persona implements Serializable{
    //private int id_barbero;
    private String especialidad;
    @OneToOne
    private Usuario unUsuario;
    @OneToMany(mappedBy = "barb")
    private List<Turno> listTurnos;
    @OneToOne
    private Horario unHorario;

    public Barbero() {
    }

    public Barbero(String especialidad, Usuario unUsuario, List<Turno> listTurnos, Horario unHorario, int id, String nombre, String apellido, String telefono, String direccion, String correo, Date fecha_nac) {
        super(id, nombre, apellido, telefono, direccion, correo, fecha_nac);
        this.especialidad = especialidad;
        this.unUsuario = unUsuario;
        this.listTurnos = listTurnos;
        this.unHorario = unHorario;
    }


    

    

   /* public int getId_barbero() {
        return id_barbero;
    }*/

    /*public void setId_barbero(int id_barbero) {
        this.id_barbero = id_barbero;
    }*/

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    public Usuario getUnUsuario() {
        return unUsuario;
    }

    public void setUnUsuario(Usuario unUsuario) {
        this.unUsuario = unUsuario;
    }

    public List<Turno> getListTurnos() {
        return listTurnos;
    }

    public void setListTurnos(List<Turno> listTurnos) {
        this.listTurnos = listTurnos;
    }

    public Horario getUnHorario() {
        return unHorario;
    }

    public void setUnHorario(Horario unHorario) {
        this.unHorario = unHorario;
    }
    
    
}
