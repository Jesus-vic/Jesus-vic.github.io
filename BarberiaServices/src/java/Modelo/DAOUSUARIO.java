/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

//import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
//import java.sql.Statement;

/**
 *
 * @author Stephano Sanchez
 */
public class DAOUSUARIO extends Conexion {
    public usuario identificar(usuario user) throws Exception{
        usuario usu = null;
        ResultSet rs = null;
        String sql = "SELECT U.IDUSUARIO, C.NOMBRECARGO FROM USUARIO U "
                + "INNER JOIN CARGO C ON U.IDCARGO = C.IDCARGO "
                + "WHERE U.ESTADO = 1 AND U.NOMBREUSUARIO = '" + user.getNombreUsuario() + "' "
                + "AND U.CONTRASENIA = '"+ user.getContrasenia() + "'";

        try{
            this.conectar(false);
            rs = this.ejecutarOrdenDatos(sql);

            if(rs.next() == true){
                usu = new usuario();
                usu.setId_usuario(rs.getInt("IDUSUARIO"));
                usu.setNombreUsuario(user.getNombreUsuario());
                usu.setCargo(new cargo());
                usu.getCargo().setNombreCargo(rs.getString("NOMBRECARGO"));
                usu.setEstado(true);
            }
            rs.close();
        }catch(Exception e){
            System.out.println("Error" + e.getMessage());
        }finally{
            this.cerrar(false);
        }
        return usu;
    }
    
    
    
    public List<usuario> listarUsuarios() throws Exception {
        List<usuario> usuarios;
        usuario usu;
        ResultSet rs = null;
        String sql = "SELECT U.IDUSUARIO, U.NOMBREUSUARIO, U.CONTRASENIA, U.ESTADO, C.NOMBRECARGO "
                + "FROM usuario U INNER JOIN cargo C "
                + "ON C.IDCARGO = U.IDCARGO "
                + "ORDER BY U.IDUSUARIO";

        try {
            this.conectar(false);
            rs = this.ejecutarOrdenDatos(sql);
            usuarios = new ArrayList<>();
            while (rs.next() == true) {
                usu = new usuario();
                usu.setId_usuario(rs.getInt("IDUSUARIO"));
                usu.setNombreUsuario(rs.getString("NOMBREUSUARIO"));
                usu.setContrasenia(rs.getString("CONTRASENIA"));
                usu.setEstado(rs.getBoolean("ESTADO"));
                usu.setCargo(new cargo());
                usu.getCargo().setNombreCargo(rs.getString("NOMBRECARGO"));
                usuarios.add(usu);
            }
            this.cerrar(true);
        } catch (Exception e) {
            throw e;
        } finally {
        }
        return usuarios;
    }

    public void registrarUsuarios(usuario usu) throws Exception {
        String sql;
        sql = "INSERT INTO Usuario (NOMBREUSUARIO, CONTRASENIA, ESTADO, IDCARGO) "
                + "VALUES ('" + usu.getNombreUsuario() + "', '"
                + usu.getContrasenia()+ "', "
                + (usu.isEstado() == true ? "1" : "0")
                + ", " + usu.getCargo().getCodigo() + ")";
        try {
            this.conectar(false);
            this.ejecutarOrden(sql);
            this.cerrar(true);
        } catch (Exception e) {
            this.cerrar(false);
            throw e;
        }
    }

    public usuario leerUsuario(usuario usu) throws Exception {
        usuario usus = null;
        ResultSet rs = null;
        String sql = "SELECT U.IDUSUARIO, U.NOMBREUSUARIO, U.CLAVE, U.ESTADO, U.IDCARGO "
                + "FROM usuario U WHERE U.IDUSUARIO = " + usu.getId_usuario();

        try {
            this.conectar(false);
            rs = this.ejecutarOrdenDatos(sql);
            if (rs.next() == true) {
                usus = new usuario();
                usus.setId_usuario(rs.getInt("IDUSUARIO"));
                usus.setNombreUsuario(rs.getString("NOMBREUSUARIO"));
                usus.setContrasenia(rs.getString("CONTRASENIA"));
                usus.setEstado(rs.getBoolean("ESTADO"));
                usus.setCargo(new cargo());
                usus.getCargo().setCodigo(rs.getInt("IDCARGO"));
            }
            this.cerrar(true);
        } catch (Exception e) {
            this.cerrar(false);
            throw e;
        } finally {
        }
        return usus;
    }

    public void actualizarUsuarios(usuario usu) throws Exception {
        String sql = "UPDATE usuario SET NOMBREUSUARIO = '"
                + usu.getNombreUsuario() + "', CONTRASENIA = '"
                + usu.getContrasenia()+ "', ESTADO = "
                + (usu.isEstado() == true ? "1" : "0")
                + ", IDCARGO = "
                + usu.getCargo().getCodigo()
                + " WHERE IDUSUARIO = " + usu.getId_usuario();
        try {
            this.conectar(false);
            this.ejecutarOrden(sql);
            this.cerrar(true);
        } catch (Exception e) {
            this.cerrar(false);
            throw e;
        }
    }

    public void eliminarUsuario(usuario usu) throws Exception {
        String sql = "DELETE FROM USUARIO"
                + " WHERE IDUSUARIO = " + usu.getId_usuario();
        try {
            this.conectar(false);
            this.ejecutarOrden(sql);
            this.cerrar(true);
        } catch (Exception e) {
            this.cerrar(false);
            throw e;
        }
    }

    public void cambiarVigencia(usuario usus) throws Exception {
        String sql = "UPDATE usuario SET estado = "
                + (usus.isEstado() == true ? "1" : "0")
                + " WHERE idusuario = " + usus.getId_usuario();
        try {
            this.conectar(false);
            this.ejecutarOrden(sql);
            this.cerrar(true);
        } catch (Exception e) {
            this.cerrar(false);
            throw e;
        }
    }
}
