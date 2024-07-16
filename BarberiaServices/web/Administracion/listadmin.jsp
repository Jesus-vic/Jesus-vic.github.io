<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    if (session.getAttribute("usuario") != null) {
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>List admin</title>

        <!-- Normalize V8.0.1 -->
        <link rel="stylesheet" href="./Administracion/css/normalize.css">

        <!-- Bootstrap V4.3 -->
        <link rel="stylesheet" href="./Administracion/css/bootstrap.min.css">

        <!-- Bootstrap Material Design V4.0 -->
        <link rel="stylesheet" href="./Administracion/css/bootstrap-material-design.min.css">

        <!-- Font Awesome V5.9.0 -->
        <link rel="stylesheet" href="./Administracion/css/all.css">

        <!-- Sweet Alerts V8.13.0 CSS file -->
        <link rel="stylesheet" href="./Administracion/css/sweetalert2.min.css">

        <!-- Sweet Alert V8.13.0 JS file-->
        <script src="./Administracion/js/sweetalert2.min.js" ></script>

        <!-- jQuery Custom Content Scroller V3.1.5 -->
        <link rel="stylesheet" href="./Administracion/css/jquery.mCustomScrollbar.css">

        <!-- General Styles -->
        <link rel="stylesheet" href="./Administracion/css/style.css">
      <!--opcional  <link href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/> -->

    </head>
    <body>

        <!-- Main container -->
        <main class="full-box main-container">
            <!-- Nav lateral -->
            <section class="full-box nav-lateral">
                <div class="full-box nav-lateral-bg show-nav-lateral"></div>
                <div class="full-box nav-lateral-content">
                    <figure class="full-box nav-lateral-avatar">
                        <i class="far fa-times-circle show-nav-lateral"></i>

                        <img src="./RESOURCES/img/testimonial-1.jpg" class="img-fluid" alt="Avatar"/>
                        
                        <figcaption class="roboto-medium text-center">
                            <p>                    
                                Bienvenido - ${usuario.nombreUsuario}
                                <small>Usted es: ${usuario.cargo.nombreCargo} </small>
                            </p>
                        </figcaption>
                    </figure>
                    <div class="full-box nav-lateral-bar"></div>
                    <nav class="full-box nav-lateral-menu">
                        <ul>
                            <li>
                                <a href="srvUsuario?accion=home"><i class="fab fa-dashcube fa-fw"></i> &nbsp; Inicio</a>
                            </li>

                            <li>
                                <a href="#" class="nav-btn-submenu"><i class="fas fa-user-tie fa-fw"></i> &nbsp; Administrador <i class="fas fa-chevron-down"></i></a>
                                <ul>
                                    <li class="active"><a href="srvUsuario?accion=nuevo"><i class="fas fa-user-plus fa-fw" ></i> &nbsp; Nuevo Usuario</a></li>
                                    <li class="active"><a href="srvUsuario?accion=listarUsuarios"><i class="fas fa-users fa-fw"></i> &nbsp; lista de Usuario</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="#" class="nav-btn-submenu"><i class="fas fa-box-open fa-fw"></i> &nbsp; Producto <i class="fas fa-chevron-down"></i></a>
                                <ul>
                                    <li><a href="product.jsp"><i class="fas fa-box fa-fw"></i> &nbsp; Nuevo producto</a></li>
                                    <li><a href="productlist.jsp"><i class="fas fa-boxes fa-fw"></i> &nbsp; Lista de productos</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="base.jsp"><i class="fas fa-columns fa-fw"></i> &nbsp; Horario</a>
                            </li>

                        </ul>
                    </nav>
                </div>
            </section>

            <!-- Page content -->
            <section class="full-box page-content">
                <nav class="full-box navbar-info">
                    <a href="#" class="float-left show-nav-lateral"><i class="fas fa-exchange-alt"></i></a>
                    <a href="#" data-toggle="modal" data-target="#ModalHelp"><i class="far fa-question-circle"></i></a>
                    <a href="#"><i class="fas fa-user-cog"></i></a>
                    <a href="#" class="btn-exit-system"><i class="fas fa-power-off"></i></a>
                </nav>

                <!-- Page header -->
                <div class="full-box page-header">
                    <h3 class="text-left">
                        <i class="fas fa-users fa-fw"></i> &nbsp; LISTA DE BARBEROS
                    </h3>
                    <p class="text-justify">
                        Lista de barberos profesionales 
                    </p>
                </div>

                <div class="container-fluid">
                    <ul class="full-box list-unstyled page-nav-tabs">
                        <li>
                            <a href="srvUsuario?accion=nuevo"><i class="fas fa-user-plus fa-fw"></i> &nbsp; NUEVO USUARIO</a>
                        </li>
                    </ul>	
                </div>

                <!-- Content -->
                <div class="container-fluid" id="tablaUsuarios" class="display">
                    <div class="table-responsive">
                        <table class="table table-dark table-sm">
                            <thead>
                                <tr class="text-center roboto-medium">
                                    <th>#</th>
                                    <th>Id Usuario</th>
                                    <th>Usuario</th>
                                    <th>Estado</th>
                                    <th>Cargo</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <c:forEach var="user" items="${usuarios}" varStatus="iteracion">                                                    
                                <tr class="text-center">
                                    <td>${iteracion.index + 1}</td>
                                    <td>${user.nombreUsuario}</td>
                                    <td>${user.contrasenia}</td>
                                    <c:if test="${user.estado == true}">
                                        <td><span class="badge bg-green active">Usuario Activo</span></td> 
                                    </c:if>
                                    <c:if test="${user.estado == false}">
                                        <td><span class="badge bg-red active">Usuario Inactivo</span></td> 
                                    </c:if>

                                    <td>${user.cargo.nombreCargo}</td>
                                    <td><a href="<c:url value="srvUsuario">
                                               <c:param name="accion" value="leerUsuario" />
                                               <c:param name="cod" value="${user.id_usuario}" />
                                           </c:url>"><button type="button" class="btn btn-success" data-toggle="tooltip"  title="Editar" data-original-title="Editar">
                                                <i class="fas fa-sync-alt"></i></button></a>
                                        <!-- DESACTIVAR / ACTIVAR USUARIOS -->
                                        <c:choose>
                                            <c:when test="${user.estado == true}">
                                                <input type="hidden" id="item" value="${user.id_usuario}">
                                                <a id="desactivarUsuario" href="srvUsuario?cambiar=desactivar&cod=${user.id_usuario}" class="btn btn-danger"  data-toggle="tooltip" title="Desactivar" data-original-title="Desactivar">
                                                    <i class="fa fa-remove"></i></a>
                                                </c:when>
                                                <c:otherwise>
                                                <input type="hidden" id="item" value="${user.id_usuario}">
                                                <a id="activarUsuario" href="srvUsuario?cambiar=activar&cod=${user.id_usuario}" class="btn btn-primary" data-toggle="tooltip" title="Activar" data-original-title="Activar">
                                                    <i class="glyphicon glyphicon-eye-open"></i></a>
                                                </c:otherwise>
                                            </c:choose>
                                        <!-- ELIMINAR USUARIOS -->
                                        <input type="hidden" id="codigo" value="${user.id_usuario}">
                                        <a id="deleteUser" href="<c:url value="srvUsuario">
                                               <c:param name="accion" value="eliminarUsuario" />
                                               <c:param name="cod" value="${user.id_usuario}" />
                                           </c:url>"><button type="button" class="btn btn-warning" data-toggle="tooltip"  title="Eliminar" data-original-title="Eliminar">
                                                <i class="far fa-trash-alt"></i></button></a>

                                    </td>
                                </tr>                                                    
                            </c:forEach>

                        </table>
                    </div>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-center">
                            <li class="page-item disabled">
                                <a class="page-link" href="#" tabindex="-1">Previous</a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#">Next</a>
                            </li>
                        </ul>
                    </nav>
                </div>

            </section>

            <!-- Help Modal -->
            <div class="modal fade" id="ModalHelp" tabindex="-1" role="dialog" aria-labelledby="ModalHelpTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title roboto-medium text-center" id="exampleModalLongTitle">Modal title</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit sunt perferendis magni expedita possimus quidem, ex, culpa totam, sapiente, laboriosam iste fugit accusamus odio! Impedit beatae eveniet asperiores distinctio sunt?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-light roboto-condensed-regular" data-dismiss="modal">Close</button>
                            &nbsp;
                            <button type="button" class="btn btn-light roboto-condensed-regular">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
        </main>


        <!--=============================================
        =            Include JavaScript files           =
        ==============================================-->
        <!-- jQuery V3.4.1 -->
        <script src="./Administracion/js/jquery-3.4.1.min.js" ></script>

        <!-- popper -->
        <script src="./Administracion/js/popper.min.js" ></script>

        <!-- Bootstrap V4.3 -->
        <script src="./Administracion/js/bootstrap.min.js" ></script>

        <!-- jQuery Custom Content Scroller V3.1.5 -->
        <script src="./Administracion/js/jquery.mCustomScrollbar.concat.min.js" ></script>

        <!-- Bootstrap Material Design V4.0 -->
        <script src="./Administracion/js/bootstrap-material-design.min.js" ></script>

        
 <!--opcional       <script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js" type="text/javascript"></script>  -->
 <!--opcional       <script src="bower_components/datatables.net/js/jquery.dataTables.min.js" type="text/javascript"></script>  -->


        <script>$(document).ready(function () {
                $('body').bootstrapMaterialDesign();
            });</script>
        
 <!--opcional  <script>$(document).ready(function () { $('#tablaUsuarios').DataTable();}); </script>  -->

        <script src="./Administracion/js/main.js" ></script>
    </body>
</html>
<%
    } else {
        response.sendRedirect("identificar.jsp");
    }
%>