<%-- 
    Document   : admin
    Created on : 5 jul. 2024, 9:46:01 p. m.
    Author     : Jesus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>New admin</title>

	<!-- Normalize V8.0.1 -->
	<link rel="stylesheet" href="./css/normalize.css">

	<!-- Bootstrap V4.3 -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">

	<!-- Bootstrap Material Design V4.0 -->
	<link rel="stylesheet" href="./css/bootstrap-material-design.min.css">

	<!-- Font Awesome V5.9.0 -->
	<link rel="stylesheet" href="./css/all.css">

	<!-- Sweet Alerts V8.13.0 CSS file -->
	<link rel="stylesheet" href="./css/sweetalert2.min.css">

	<!-- Sweet Alert V8.13.0 JS file-->
	<script src="./js/sweetalert2.min.js" ></script>

	<!-- jQuery Custom Content Scroller V3.1.5 -->
	<link rel="stylesheet" href="./css/jquery.mCustomScrollbar.css">
	
	<!-- General Styles -->
	<link rel="stylesheet" href="./css/style.css">


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
					<img src="./assets/avatar/Avatar.png" class="img-fluid" alt="Avatar">
					<figcaption class="roboto-medium text-center">
						Carlos Alfaro <br><small class="roboto-condensed-light">Web Developer</small>
					</figcaption>
				</figure>
				<div class="full-box nav-lateral-bar"></div>
				<nav class="full-box nav-lateral-menu">
					<ul>
						<li>
							<a href="home.html"><i class="fab fa-dashcube fa-fw"></i> &nbsp; Dashboard</a>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-user-tie fa-fw"></i> &nbsp; Administrator <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li><a href="admin.html"><i class="fas fa-user-plus fa-fw"></i> &nbsp; New admin</a></li>
								<li><a href="listadmin.html"><i class="fas fa-users fa-fw"></i> &nbsp; List admin</a></li>
							</ul>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-box-open fa-fw"></i> &nbsp; Products <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li><a href="product.html"><i class="fas fa-box fa-fw"></i> &nbsp; New product</a></li>
								<li><a href="productlist.html"><i class="fas fa-boxes fa-fw"></i> &nbsp; List products</a></li>
							</ul>
						</li>

						<li>
							<a href="base.html"><i class="fas fa-columns fa-fw"></i> &nbsp; Base template</a>
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
					<i class="fas fa-user-plus fa-fw"></i> &nbsp; NEW ADMIN
				</h3>
				<p class="text-justify">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit nostrum rerum animi natus beatae ex. Culpa blanditiis tempore amet alias placeat, obcaecati quaerat ullam, sunt est, odio aut veniam ratione.
				</p>
			</div>
			
			<div class="container-fluid">
				<ul class="full-box list-unstyled page-nav-tabs">
					<li>
						<a class="active" href="admin.jsp"><i class="fas fa-user-plus fa-fw"></i> &nbsp; NEW ADMIN</a>
					</li>
					<li>
						<a href="listadmin.jsp"><i class="fas fa-users fa-fw"></i> &nbsp; LIST ADMIN</a>
					</li>
				</ul>	
			</div>
			
			<!-- Content -->
			<div class="container-fluid">
				<form action="" class="form-neon" autocomplete="off">
					<fieldset>
						<legend><i class="far fa-address-card"></i> &nbsp; Personal information</legend>
						<div class="container-fluid">
							<div class="row">
								<div class="col-12">
									<div class="form-group">
										<label for="AdminDNI" class="bmd-label-floating">DNI</label>
										<input type="text" pattern="[0-9]{1,20}" class="form-control" id="AdminDNI" maxlength="20">
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="AdminName" class="bmd-label-floating">Name</label>
										<input type="text" pattern="[a-zA-z ]{1,25}" class="form-control" id="AdminName" maxlength="25">
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="AdminLastName" class="bmd-label-floating">Last Name</label>
										<input type="text" pattern="[a-zA-z ]{1,25}" class="form-control" id="AdminLastName" maxlength="25">
									</div>
								</div>
								<div class="col-12">
									<div style="padding: 20px 0 5px 0; color: #004f45; ">Gender</div>
									<div class="form-group">
										<div class="radio">
											<label>
												<input type="radio" name="AdminGender" value="Male" checked>
												<i class="fas fa-male fa-fw"></i> &nbsp; Male
											</label>
										</div>
										<div class="radio">
											<label>
												<input type="radio" name="AdminGender" id="optionsRadios2" value="Female">
												<i class="fas fa-female fa-fw"></i> &nbsp; Female
											</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<br><br><br>
					<fieldset>
						<legend><i class="fas fa-user-lock"></i> &nbsp; Account information</legend>
						<div class="container-fluid">
							<div class="row">
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="UserName" class="bmd-label-floating">User name</label>
										<input type="text" pattern="[a-zA-Z]{1,15}" class="form-control" id="UserName" maxlength="15">
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="Email" class="bmd-label-floating">Email</label>
										<input type="email" class="form-control" id="Email" maxlength="50">
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="Password1" class="bmd-label-floating">Password</label>
										<input type="password" class="form-control" id="Password1" maxlength="50">
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="Password2" class="bmd-label-floating">Repeat password</label>
										<input type="password" class="form-control" id="Password2" maxlength="50">
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<p class="text-center" style="margin-top: 40px;">
						<button type="reset" class="btn btn-info"><i class="fas fa-paint-roller"></i> &nbsp; CLEAR</button>
						&nbsp; &nbsp;
						<button type="submit" class="btn btn-success"><i class="far fa-save"></i> &nbsp; SAVE</button>
					</p>
				</form>
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
	<script src="./js/jquery-3.4.1.min.js" ></script>

	<!-- popper -->
	<script src="./js/popper.min.js" ></script>

	<!-- Bootstrap V4.3 -->
	<script src="./js/bootstrap.min.js" ></script>

	<!-- jQuery Custom Content Scroller V3.1.5 -->
	<script src="./js/jquery.mCustomScrollbar.concat.min.js" ></script>

	<!-- Bootstrap Material Design V4.0 -->
	<script src="./js/bootstrap-material-design.min.js" ></script>
	<script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>

	<script src="./js/main.js" ></script>
</body>
</html>
