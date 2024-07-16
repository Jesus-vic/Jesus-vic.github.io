<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>Login</title>

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

        <!-- Sweet Alert V8.13.0 JS file -->
        <script src="./Administracion/js/sweetalert2.min.js" ></script>

        <!-- jQuery Custom Content Scroller V3.1.5 -->
        <link rel="stylesheet" href="./Administracion/css/jquery.mCustomScrollbar.css">

        <!-- General Styles -->
        <!--   <link rel="stylesheet" href="./css/style.css"> -->
        <link href="Administracion/css/style_log.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <div class="login-container">
            <div class="login-content">
                <p class="text-center">
                    <i class="fas fa-user-circle fa-5x"></i>
                </p>
                <p class="text-center">
                    Inicia sesión con tu cuenta
                </p>
                <form action="srvUsuario?accion=verificar" method="POST">
                    <div class="form-group">
                        <label for="txtNombre" class="bmd-label-floating"><i class="fas fa-user-secret"></i> &nbsp; Usuario</label>
                        <input type="text" name="txtNombre" class="form-control" id="txtNombre">
                    </div>
                    <div class="form-group">
                        <label for="txtClave" class="bmd-label-floating"><i class="fas fa-key"></i> &nbsp; Contraseña</label>
                        <input type="password" name="txtClave" class="form-control" id="txtClave">
                    </div>
                    <div class="col-xs-8">
                        <div class="checkbox icheck">
                            <label>
                                <input type="checkbox"> Recuérdame
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <input type="submit" name="verificar" value="verificar" class="btn btn-primary btn-block"/>
                        </div>
                    </div>

                    <!-- <a href="Administracion/home_2.jsp" class="btn-login text-center">LOG IN</a>    -->              

                    <div class="social-auth-links text-center">
                        <p>- Verificación Credenciales -</p>
                        <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-info"></i> Mensaje: 
                            ${msje}</a>
                    </div>
                    <!-- /.social-auth-links -->

                    <a href="#">Olvide mi contraseña</a><br>
                    <a href="#" class="text-center">Registra un nuevo usuario</a>
                </form>

                <!-- /.col        <div class="col-xs-4">  -->
                <!-- /.col           <input type="submit" name="verificar" value="Verificar" class="btn btn-primary btn-block"/>  -->

            </div>
        </div>


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
        <script>$(document).ready(function () {
                $('body').bootstrapMaterialDesign();
            });</script>

        <script src="./Administracion/js/main.js" ></script>
        <script>
            $(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' /* optional */
                });
            });
        </script>
    </body>
</html>