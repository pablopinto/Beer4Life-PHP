<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Beer4Life</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

    </head>
<body>
	<!-- Top content -->
	<div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Beer</strong>4Life</h1>
                            <div class="description">
                            	<p>
                                    Entra en nuestra pagina para disfrutar de la mejor cerveza
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Entra a nuestra web</h3>
                                    <p>Introduce tus datos para registrarte</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" method="post" class="login-form" id="registro" >
									<input type="hidden" id="flag" name="flag" value="false" />	
									<div class="form-group">
			                        	<label class="sr-only" for="form-apellido">Nombre: </label>
										<input type="text" name="nombre" placeholder="Nombre..." class="form-password form-control" id="form-password" value="<?= $nom ?>" maxlength="50" required >
									</div>
									<div class="form-group">
			                        	<label class="sr-only" for="form-apellido">Apellidos: </label>
										<input type="text" name="apellidos" placeholder="Apellidos..." class="form-password form-control" id="form-password" value="<?= $ape ?>" maxlength="50" required >
									</div>
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username usuario">Nombre de Usuario</label>
										<input type="text" name="usuario" placeholder="Usuario..." class="form-username form-control" id="form-username" value="<?= $usr ?>" required>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password password">Contraseña</label>
										<input type="password" name="pwd" placeholder="Contraseña..." class="form-password form-control" id="form-password" required>
									</div>
									<div class="form-group">
			                        	<label class="sr-only" for="form-email">Email: </label>
										<input type="emails" name="email" style="height:50px" placeholder="tu_email@email.com" class="form-control" id="form-password" value="<?= $ema ?>" required >
									</div>
									
									
			                        <button type="submit" class="btn">Registrar</button>
                                </form>
                                <div class="social-login-buttons">
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h3>...or login with:</h3>
                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-facebook"></i> Facebook
	                        	</a>
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-twitter"></i> Twitter
	                        	</a>
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-google-plus"></i> Google Plus
	                        	</a>
                        	</div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
	<!-- Javascript -->
	<script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
</body>
</html>

