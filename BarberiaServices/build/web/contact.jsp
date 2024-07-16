<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Barberia Autónoma</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free Website Template" name="keywords">
        <meta content="Free Website Template" name="description">

        <!-- Favicon -->
        <link href="RESOURCES/img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="RESOURCES/lib/animate/animate.min.css" rel="stylesheet">
        <link href="RESOURCES/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="RESOURCES/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="RESOURCES/css/styles.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <!-- Top Bar Start -->
        <div class="top-bar d-none d-md-block">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <div class="top-bar-left">
                            <div class="text">
                                <h2>10:00 - 20:00</h2>
                                <p>Horario de apertura Lun - Dom</p>
                            </div>
                            <div class="text">
                                <h2>+51 456 7890</h2>
                                <p>Llámanos para concertar una cita</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="top-bar-right">
                            <div class="social">
                                <a href=""><i class="fab fa-twitter"></i></a>
                                <a href=""><i class="fab fa-facebook-f"></i></a>
                                <a href=""><i class="fab fa-linkedin-in"></i></a>
                                <a href=""><i class="fab fa-instagram"></i></a>
                                <a href="identificar.jsp"><i class="bi bi-person"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Top Bar End -->

        <!-- Nav Bar Start -->
        <div class="navbar navbar-expand-lg bg-dark navbar-dark">
            <div class="container-fluid">
                <a href="index.jps" class="navbar-brand">Barberia <span>X</span></a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav ml-auto">
                        <a href="index.jsp" class="nav-item nav-link active">Inicio</a>
                        <a href="about.jsp" class="nav-item nav-link">Sobre nosotros</a>
                        <a href="service.jsp" class="nav-item nav-link">Servicio</a>
                        <a href="price.jsp" class="nav-item nav-link">Precio</a>
                        <a href="team.jsp" class="nav-item nav-link">Barbero</a>
                        <a href="portfolio.jsp" class="nav-item nav-link">Galeria</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu">
                                <a href="blog.jsp" class="dropdown-item">Blog Page</a>
                                <a href="single.jsp" class="dropdown-item">Single Page</a>
                            </div>
                        </div>
                        <a href="contact.jsp" class="nav-item nav-link">Contacto</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Nav Bar End -->


        <!-- Page Header Start -->
        <div class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>Contacto</h2>
                    </div>
                    <div class="col-12">
                        <a href="">Inicio</a>
                        <a href="">Contacto</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- Contact Start -->
        <div class="section-header text-center" style="margin-top: 90px;">
            <p>Ponerse en contacto</p>
            <h2>Si tiene alguna consulta, contáctenos</h2>
        </div>
        <div class="contact" style="margin-bottom: 90px;">
            <div class="container-fluid">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-4"></div>
                        <div class="col-md-8">
                            <div class="contact-form">
                                <div id="success"></div>
                                <form name="sentMessage" id="contactForm" novalidate="novalidate">
                                    <div class="control-group">
                                        <input type="text" class="form-control" id="name" placeholder="Nombre" required="required" data-validation-required-message="Por favor, escriba su nombre" />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div class="control-group">
                                        <input type="email" class="form-control" id="email" placeholder="Email" required="required" data-validation-required-message="Por favor introduzca su correo electrónico" />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div class="control-group">
                                        <input type="text" class="form-control" id="subject" placeholder="Asunto" required="required" data-validation-required-message="Por favor ingresa un asunto" />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div class="control-group">
                                        <textarea class="form-control" id="message" placeholder="Mensaje" required="required" data-validation-required-message="Por favor ingrese su mensaje"></textarea>
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div>
                                        <button class="btn" type="submit" id="sendMessageButton">Enviar mensaje</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->


        <!-- Footer Start -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="footer-contact">
                                    <h2>Dirección del salón</h2>
                                    <p><i class="fa fa-map-marker-alt"></i>123 Street, Lima, PERÚ</p>
                                    <p><i class="fa fa-phone-alt"></i>+51 345 67890</p>
                                    <p><i class="fa fa-envelope"></i>info@example.com</p>
                                    <div class="footer-social">
                                        <a href=""><i class="fab fa-twitter"></i></a>
                                        <a href=""><i class="fab fa-facebook-f"></i></a>
                                        <a href=""><i class="fab fa-youtube"></i></a>
                                        <a href=""><i class="fab fa-instagram"></i></a>
                                        <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="footer-link">
                                    <h2>Enlaces rápidos</h2>
                                    <a href="">Terms of use</a>
                                    <a href="">Privacy policy</a>
                                    <a href="">Cookies</a>
                                    <a href="">Help</a>
                                    <a href="">FQAs</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="footer-newsletter">
                            <h2>Boletin informativo</h2>
                            <p>
                                Lorem ipsum dolor sit amet elit. Quisque eu lectus a leo dictum nec non quam. Tortor eu placerat rhoncus, lorem quam iaculis felis, sed lacus neque id eros.
                            </p>
                            <div class="form">
                                <input class="form-control" placeholder="Email goes here">
                                <button class="btn">Submit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container copyright">
                <div class="row">
                    <div class="col-md-6">
                        <p>&copy; <a href="#">BarberiaAutonoma</a>, Todos los derechos reservados.</p>
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- Footer End -->

        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="RESOURCES/lib/easing/easing.min.js"></script>
        <script src="RESOURCES/lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="RESOURCES/lib/isotope/isotope.pkgd.min.js"></script>
        <script src="RESOURCES/lib/lightbox/js/lightbox.min.js"></script>
        
        <!-- Contact Javascript File -->
        <script src="RESOURCES/mail/jqBootstrapValidation.min.js"></script>
        <script src="RESOURCES/mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="RESOURCES/js/main.js" type="text/javascript"></script>
    </body>
</html>
