/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.OneToOne;

/**
 *
 * @author Admin
 */

@Entity
public class Administrador extends Persona implements Serializable{
    //private int id_administrador;
    private String sector;
    @OneToOne
    private Usuario unUsuario;

    public Administrador() {
    }

    public Administrador(String sector, Usuario unUsuario, int id, String nombre, String apellido, String telefono, String direccion, String correo, Date fecha_nac) {
        super(id, nombre, apellido, telefono, direccion, correo, fecha_nac);
        this.sector = sector;
        this.unUsuario = unUsuario;
    }

    
    public String getSector() {
        return sector;
    }

    public void setSector(String sector) {
        this.sector = sector;
    }

    public Usuario getUnUsuario() {
        return unUsuario;
    }

    public void setUnUsuario(Usuario unUsuario) {
        this.unUsuario = unUsuario;
    }
    
}
