<?php

	$nom = $_POST["nombre"]??"" ;
	$ape = $_POST["apellidos"]??"" ;
	$usr = $_POST["usuario"]??"" ;
	$ema = $_POST["email"]??"" ;

	$lnk = new mysqli("localhost","root","") 
			or	die("**Error de conexión: $lnk->connection_errno : $lnk->connection_error") ;

	$lnk->select_db("epiz_23055447_final") ;

	$lnk->set_charset("utf8") ;

	if (isset($_POST["flag"]) && ($_POST["flag"]==="false")):

		$pwd = md5($_POST["pwd"]) ;
		$token = SHA1($usr * $ema * $pwd);
		$sql = "INSERT INTO usuario
			    (usuario,password,email,nombre,apellidos,token) VALUES
			    ('$usr','$pwd','$ema','$nom','$ape','$token') ;" ;

		if($lnk->query($sql)):
			header("location:index.php") ;
		else :
			$err = "Se ha producido un error en el registro." ;
			require_once("forms/formulario_registro.php") ;
		endif ;


	else:
		require_once("forms/formulario_registro.php") ;
	endif ;
	
	$lnk->close() ;
