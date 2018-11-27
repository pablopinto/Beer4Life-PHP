<?php
	// CONSULTA CON MYSQL_i
	// 	if (isset($_POST["usuario"]) && isset($_POST["password"])):
			
	// 		$lnk = new mysqli("localhost","root","") 
	// 					or	die("**Error de conexión: $lnk->connection_errno : $lnk->connection_error") ;	 
	//   	$lnk->select_db("Beer4Life") ;
	// 		$lnk->set_charset("utf8") ;

	// 	$usr = $_POST["usuario"] ;
	// 	$pwd = md5($_POST["password"]);

	// 	$sql = "SELECT * FROM usuario WHERE usuario='$usr' AND password='$pwd' ;" ;
	// 	$res = $lnk->query($sql);
	// 		 print_r($res->num_rows);
	// 	if($res->num_rows == 1):
	// 	if($res->num_rows == 1):
	// 		header('location:/beer/main.php');
	// 		print_r($res);
	// 	elseif ($res->num_rows == 0):
	// 		 header('location:/beer/comp_usr.php');
	// 		print_r($res);
	// 	endif ;
		
	// 	else:
    //     require_once("index.php") ;
    //     $lnk = null ;
 	// 	endif ;
     
// CONSULTA CON PDO
// require_once "database/database.php" ;
// require_once "session/sesion.php" ;

// 	if (isset($_POST["usuario"]) && isset($_POST["password"])):

// 		try {
// 		$lnk = new PDO("mysql:host=localhost;dbname=final","root","") ;
// 		} catch(PDOException $e) {
//             die("**Error en la conexión: ".$e->getMessage()) ;
// 		}
		
// 		$ses = Sesion::startSession() ;
// 		$usr = $_POST["usuario"] ;
// 		$pwd = md5($_POST["password"]);

// 		$sql = "SELECT * FROM usuario WHERE usuario='$usr' AND password='$pwd'" ;
// 		$res = $lnk->prepare($sql);
// 		$res->execute();
// 		$result = $res->fetchAll(PDO::FETCH_ASSOC);
// 		// print_r ($res);

// 		if ($result):
// 			header('location:/beer/beer/main.php?login_ok');
// 		else:
// 			header('location:/beer/beer/index.php?login_failed');
// 		endif;
		
// 		else:
//         require_once("forms/form_inicio.php") ;
//         $lnk = null ;
// 	endif ;

// CONEXION MEDIANTE CON SESSION
require_once "database/database.php" ;
require_once "session/sesion.php" ;

if (isset($_POST["usuario"]) && isset($_POST["password"])):
	
	$ses = Sesion::startSession() ;
		// if ($ses->checkActiveSession()):
		// 	 $ses->redirect("location:/beer/main.php");
		// endif;

	$usr = $_POST["usuario"] ;
	$pwd = $_POST["password"] ;

	$log = $ses->doLogin($usr, $pwd) ;
	if ($log):
		 header('location:/beer/main.php?login_ok');

	else:
		
		 echo "Error!" ;
		header('location:index.php?login_failed');
	endif;
else:
	require_once("forms/form_inicio.php") ;
endif;



