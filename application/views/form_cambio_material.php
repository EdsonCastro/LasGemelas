<!DOCTYPE html>
<html lang="en">
<head>
	<title>Modificar Bebida</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/assets/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/assets/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/assets/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/assets/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/assets/css/Admin/util.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/assets/css/Admin/main.css">
<!--===============================================================================================-->
</head>
<body>

	<div class="contact1">
		<div class="container-contact1">
			<div class="contact1-pic js-tilt" data-tilt>
				<img src="<?php echo base_url() ?>/assets/img/bebida.jpg" alt="IMG">
			</div>
			<form class="contact1-form validate-form" action="<?php echo base_url('index.php/Materiales/nuevo_cambio/'.$clave['id'])?>" method="POST">
				<span class="contact1-form-title">
					Modificar Bebida
				</span>

				<div class="wrap-input1 validate-input" data-validate = "Por favor, rellene el campo Nombre">
					<input class="input1" type="text" name="nombre" placeholder="Nombre" value=<?php echo($clave['nombre'])?>>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Por favor, rellene el campo Cantidad">
					<input class="input1" type="text" name="cantidad" placeholder="Cantidad" value=<?php echo($clave['cantidad'])?>>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Por favor, rellene el campo Precio">
					<input class="input1" type="text" name="precio" placeholder="Precio" value=<?php echo($clave['precio'])?>>
					<span class="shadow-input1"></span>
				</div>

				<!--<div class="wrap-input1 validate-input" data-validate = "Message is required">
					<textarea class="input1" name="message" placeholder="Message"></textarea>
					<span class="shadow-input1"></span>
				</div>-->

				<div class="container-contact1-form-btn">
					<button class="contact1-form-btn">
						<span>
							Confirmar
							<i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						</span>
					</button>

				</div>
			</form>
		</div>
	</div>




<!--===============================================================================================-->
	<script src="<?php echo base_url() ?>/assets/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="<?php echo base_url() ?>/assets/vendor/bootstrap/js/popper.js"></script>
	<script src="<?php echo base_url() ?>/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="<?php echo base_url() ?>/assets/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="<?php echo base_url() ?>/assets/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

<!--===============================================================================================-->
	<script src="<?php echo base_url() ?>/assets/js/admin/main.js"></script>

</body>
</html>
