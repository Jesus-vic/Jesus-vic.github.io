/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.DAOCARGO;
import Modelo.DAOUSUARIO;
import Modelo.usuario;
import Modelo.cargo;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jesus
 */
@WebServlet(name = "srvUsuario", urlPatterns = {"/srvUsuario"})
public class srvUsuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");
        try {
            if (accion != null) {
                switch (accion) {
                    case "verificar":

                        verificar(request, response);
                        break;
                    case "cerrar":
                        cerrarsession(request, response);
                        break;
                    case "listarUsuarios":
                        listarUsuarios(request, response);
                        break;
                    case "nuevo":
                        presentarFormulario(request, response);
                        break;
                    case "registrar":
                        registrarUsuario(request, response);
                        break;
                    case "leerUsuario":
                        presentarUsuario(request, response);
                        break;
                    case "actualizarUsuario":
                        actualizarUsuario(request, response);
                        break;
                    case "eliminarUsuario":
                        eliminarUsuario(request, response);
                        break;
                    case "home":
                        request.getRequestDispatcher("/Administracion/home.jsp").forward(request, response);
                        break;
                    default:
                        response.sendRedirect("identificar.jsp");
                }
            } else {
                response.sendRedirect("identificar.jsp");
            }
        } catch (Exception e) {
            try {
                this.getServletConfig().getServletContext().getRequestDispatcher("mensaje.jsp").forward(request, response);

            } catch (Exception ex) {
                System.out.println("Error" + e.getMessage());
            }

        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void verificar(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession sesion;
        DAOUSUARIO dao;
        usuario usuario;
        usuario = this.obtenerUsuario(request);
        dao = new DAOUSUARIO();
        usuario = dao.identificar(usuario);
        if (usuario != null && usuario.getCargo().getNombreCargo().equals("ADMINISTRADOR")) {
            sesion = request.getSession();
            sesion.setAttribute("usuario", usuario);
            request.setAttribute("msje", "Bienvenido al sistema");
            this.getServletConfig().getServletContext().getRequestDispatcher("/Administracion/home.jsp").forward(request, response);
        } else if (usuario != null && usuario.getCargo().getNombreCargo().equals("BARBERO")) {
            sesion = request.getSession();
            sesion.setAttribute("barbero", usuario);
            this.getServletConfig().getServletContext().getRequestDispatcher("/Administracion/home_2.jsp").forward(request, response);
        } else {
            request.setAttribute("msje", "Credenciales Incorrectas");
            request.getRequestDispatcher("/identificar.jsp").forward(request, response);
        }

    }

    private void cerrarsession(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession sesion = request.getSession();
        sesion.setAttribute("usuario", null);
        sesion.invalidate();
        response.sendRedirect("identificar.jsp");

    }

    private usuario obtenerUsuario(HttpServletRequest request) {
        usuario u = new usuario();
        u.setNombreUsuario(request.getParameter("txtNombre"));
        u.setContrasenia(request.getParameter("txtClave"));
        return u;
    }

    private void listarUsuarios(HttpServletRequest request, HttpServletResponse response) {
        DAOUSUARIO dao = new DAOUSUARIO();
        List<usuario> usus = null;
        try {
            usus = dao.listarUsuarios();
            request.setAttribute("usuarios", usus);

        } catch (Exception e) {
            request.setAttribute("msje", "No se pudo listar los usuarios" + e.getMessage());
        } finally {
            dao = null;
        }
        try {
            this.getServletConfig().getServletContext()
                    .getRequestDispatcher("/Administracion/listadmin.jsp").forward(request, response);
        } catch (Exception ex) {
            request.setAttribute("msje", "No se puedo realizar la petición" + ex.getMessage());
        }
    }

    private void presentarFormulario(HttpServletRequest request, HttpServletResponse response) {
        try {
            this.cargarCargos(request);
            this.getServletConfig().getServletContext()
                    .getRequestDispatcher("/Administracion/admin.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("msje", "No se pudo cargar la vista");
        }
    }

    private void cargarCargos(HttpServletRequest request) {
        DAOCARGO dao = new DAOCARGO();
        List<cargo> car = null;
        try {
            car = dao.listarCargos();
            request.setAttribute("cargos", car);
        } catch (Exception e) {
            request.setAttribute("msje", "No se pudo cargar los cargos :( " + e.getMessage());
        } finally {
            car = null;
            dao = null;
        }
    }

    private void registrarUsuario(HttpServletRequest request, HttpServletResponse response) {
        DAOUSUARIO daoUsu;
        usuario usu = null;
        cargo carg;
        if (request.getParameter("txtNombre") != null
                && request.getParameter("txtClave") != null
                && request.getParameter("cboCargo") != null) {

            usu = new usuario();
            usu.setNombreUsuario(request.getParameter("txtNombre"));
            usu.setContrasenia(request.getParameter("txtClave"));
            carg = new cargo();
            carg.setCodigo(Integer.parseInt(request.getParameter("cboCargo")));
            usu.setCargo(carg);
            if (request.getParameter("chkEstado") != null) {
                usu.setEstado(true);
            } else {
                usu.setEstado(false);
            }
            daoUsu = new DAOUSUARIO();
            try {
                daoUsu.registrarUsuarios(usu);
                response.sendRedirect("srvUsuario?accion=listarUsuarios");
            } catch (Exception e) {
                request.setAttribute("msje",
                        "No se pudo registrar el usuario" + e.getMessage());
                request.setAttribute("usuario", usu);
                this.presentarFormulario(request, response);
            }
        }
    }

    private void presentarUsuario(HttpServletRequest request, HttpServletResponse response) {
        DAOUSUARIO dao;
        usuario usus;
        if (request.getParameter("cod") != null) {
            usus = new usuario();
            usus.setId_usuario(Integer.parseInt(request.getParameter("cod")));

            dao = new DAOUSUARIO();
            try {
                usus = dao.leerUsuario(usus);
                if (usus != null) {
                    request.setAttribute("usuario", usus);
                } else {
                    request.setAttribute("msje", "No se encontró el usuario");
                }
            } catch (Exception e) {
                request.setAttribute("msje", "No se pudo acceder a la base de datos" + e.getMessage());
            }
        } else {
            request.setAttribute("msje", "No se tiene el parámetro necesario");
        }
        try {
            this.cargarCargos(request);
            this.getServletConfig().getServletContext().
                    getRequestDispatcher("/Administracion/ActualizarUsuario.jsp"
                    ).forward(request, response);
        } catch (Exception e) {
            request.setAttribute("msje", "No se pudo realizar la operacion" + e.getMessage());
        }
    }

    private void actualizarUsuario(HttpServletRequest request, HttpServletResponse response) {
        DAOUSUARIO daoUsu;
        usuario usus = null;
        cargo car;

        if (request.getParameter("hCodigo") != null
                && request.getParameter("txtNombre") != null
                && request.getParameter("txtClave") != null
                && request.getParameter("cboCargo") != null) {

            usus = new usuario();
            usus.setId_usuario(Integer.parseInt(request.getParameter("hCodigo")));
            usus.setNombreUsuario(request.getParameter("txtNombre"));
            usus.setContrasenia(request.getParameter("txtClave"));
            car = new cargo();
            car.setCodigo(Integer.parseInt(request.getParameter("cboCargo")));
            usus.setCargo(car);
            if (request.getParameter("chkEstado") != null) {
                usus.setEstado(true);
            } else {
                usus.setEstado(false);
            }
            daoUsu = new DAOUSUARIO();
            try {
                daoUsu.actualizarUsuarios(usus);
                response.sendRedirect("srvUsuario?accion=listarUsuarios");
            } catch (Exception e) {
                request.setAttribute("msje",
                        "No se pudo actualizar el usuario" + e.getMessage());
                request.setAttribute("usuario", usus);

            }
            try {
                this.cargarCargos(request);
                this.getServletConfig().getServletContext().
                        getRequestDispatcher("/Administracion/admin.jsp"
                        ).forward(request, response);
            } catch (Exception ex) {
                request.setAttribute("msje", "No se pudo realizar la operacion" + ex.getMessage());
            }
        }

    }

    private void eliminarUsuario(HttpServletRequest request, HttpServletResponse response) {
        DAOUSUARIO dao = new DAOUSUARIO();
        usuario usus = new usuario();
        if (request.getParameter("cod") != null) {
            usus.setId_usuario(Integer.parseInt(request.getParameter("cod")));
            try {
                dao.eliminarUsuario(usus);
                response.sendRedirect("srvUsuario?accion=listarUsuarios");
            } catch (Exception e) {
                request.setAttribute("msje", "No se pudo acceder a la base de datos" + e.getMessage());
            }
        } else {
            request.setAttribute("msje", "No se encontro el usuario");
        }
    }
    
    private void cambiarEstado(HttpServletRequest request, HttpServletResponse response) {
        DAOUSUARIO dao;
        usuario usu;
        try {
            dao = new DAOUSUARIO();
            usu = new usuario();

            if (request.getParameter("cambiar").equals("activar")) {
                usu.setEstado(true);
            } else {
                usu.setEstado(false);
            }

            if (request.getParameter("cod") != null) {
                usu.setId_usuario(Integer.parseInt(request.getParameter("cod")));
                dao.cambiarVigencia(usu);
            } else {
                request.setAttribute("msje", "No se obtuvo el id del usuario");
            }

        } catch (Exception e) {
            request.setAttribute("msje", e.getMessage());
        }
        this.listarUsuarios(request, response);
    }

}
