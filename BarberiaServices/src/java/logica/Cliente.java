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
public class Cliente extends Persona implements Serializable{
    //private int id_cliente;
    private String tipo_cabello;
    private String forma_cara;
    @OneToOne
    private Usuario unUsuario;
    @OneToMany(mappedBy = "clien")
    private List<Turno> listTurnos;
    @OneToMany(mappedBy = "clien2")
    private List<Corte> listCortes;
    

    public Cliente() {
    }

    public Cliente(String tipo_cabello, String forma_cara, Usuario unUsuario, List<Turno> listTurnos, List<Corte> listCortes, int id, String nombre, String apellido, String telefono, String direccion, String correo, Date fecha_nac) {
        super(id, nombre, apellido, telefono, direccion, correo, fecha_nac);
        this.tipo_cabello = tipo_cabello;
        this.forma_cara = forma_cara;
        this.unUsuario = unUsuario;
        this.listTurnos = listTurnos;
        this.listCortes = listCortes;
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

    public List<Corte> getListCortes() {
        return listCortes;
    }

    public void setListCortes(List<Corte> listCortes) {
        this.listCortes = listCortes;
    }

    

    public String getTipo_cabello() {
        return tipo_cabello;
    }

    public void setTipo_cabello(String tipo_cabello) {
        this.tipo_cabello = tipo_cabello;
    }

    public String getForma_cara() {
        return forma_cara;
    }

    public void setForma_cara(String forma_cara) {
        this.forma_cara = forma_cara;
    }
    
}
