<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>New product</title>

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
							<a href="home.jsp"><i class="fab fa-dashcube fa-fw"></i> &nbsp; Dashboard</a>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-user-tie fa-fw"></i> &nbsp; Administrator <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li><a href="admin.jsp"><i class="fas fa-user-plus fa-fw"></i> &nbsp; New admin</a></li>
								<li><a href="listadmin.jsp"><i class="fas fa-users fa-fw"></i> &nbsp; List admin</a></li>
							</ul>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-box-open fa-fw"></i> &nbsp; Products <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li><a href="product.jsp"><i class="fas fa-box fa-fw"></i> &nbsp; New product</a></li>
								<li><a href="productlist.jsp"><i class="fas fa-boxes fa-fw"></i> &nbsp; List products</a></li>
							</ul>
						</li>

						<li>
							<a href="base.jsp"><i class="fas fa-columns fa-fw"></i> &nbsp; Base template</a>
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
					<i class="fas fa-box fa-fw"></i> &nbsp; NEW PRODUCT
				</h3>
				<p class="text-justify">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit nostrum rerum animi natus beatae ex. Culpa blanditiis tempore amet alias placeat, obcaecati quaerat ullam, sunt est, odio aut veniam ratione.
				</p>
			</div>

			<div class="container-fluid">
				<ul class="full-box list-unstyled page-nav-tabs">
					<li>
						<a class="active" href="product.jsp"><i class="fas fa-box fa-fw"></i> &nbsp; NEW PRODUCT</a>
					</li>
					<li>
						<a href="productlist.jsp"><i class="fas fa-boxes fa-fw"></i> &nbsp; LIST PRODUCTS</a>
					</li>
				</ul>	
			</div>
			
			<!-- Content here-->
			<div class="container-fluid">
				<form action="" class="form-neon" autocomplete="off">
					<fieldset>
						<legend><i class="fas fa-box-open"></i> &nbsp; Basic information</legend>
						<div class="container-fluid">
							<div class="row">
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="ProductCode" class="bmd-label-floating">Code</label>
										<input type="text" pattern="[a-zA-Z0-9]{1,25}" class="form-control" id="ProductCode" maxlength="25">
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="ProductName" class="bmd-label-floating">Name</label>
										<input type="text" pattern="[a-zA-Z0-9 ]{1,30}" class="form-control" id="ProductName" maxlength="30">
									</div>
								</div>
								<div class="col-12 col-md-4">
									<div class="form-group">
										<label for="ProductBrand" class="bmd-label-floating">Brand</label>
										<input type="text" pattern="[a-zA-Z0-9]{1,25}" class="form-control" id="ProductBrand" maxlength="25">
									</div>
								</div>
								<div class="col-12 col-md-4">
									<div class="form-group">
										<label for="ProductModel" class="bmd-label-floating">Model</label>
										<input type="text" pattern="[a-zA-z0-9 ]{1,20}" class="form-control" id="ProductModel" maxlength="20">
									</div>
								</div>
								<div class="col-12 col-md-4">
									<div class="form-group">
										<label for="ProducPrice" class="bmd-label-floating">Price</label>
										<input type="num" pattern="[0-9.]{1,15}" class="form-control" id="ProducPrice" maxlength="15">
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<br><br><br>
					<fieldset>
						<legend><i class="fas fa-truck-loading"></i> &nbsp; Provider & Category</legend>
						<div class="container-fluid">
							<div class="row">
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="ProductProvider" class="bmd-label-floating">Provider</label>
										<select class="form-control" id="ProductProvider">
											<option>Provider 1</option>
											<option>Provider 2</option>
											<option>Provider 3</option>
											<option>Provider 4</option>
											<option>Provider 5</option>
										</select>
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="ProductCategory" class="bmd-label-floating">Category</label>
										<select class="form-control" id="ProductCategory">
											<option>Category 1</option>
											<option>Category 2</option>
											<option>Category 3</option>
											<option>Category 4</option>
											<option>Category 5</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<br><br><br>
					<fieldset>
						<legend><i class="far fa-image"></i> &nbsp; Image</legend>
						<div class="container-fluid">
							<div class="row">
								<div class="col-12">
									<div class="form-group">
										<label for="ProductImg" class="bmd-label-floating">Product image</label>
										<input type="file" class="form-control-file" id="ProductImg">
										<small class="text-muted">This is some placeholder block-level help text for the above input. It's a bit lighter and easily wraps to a new line.</small>
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