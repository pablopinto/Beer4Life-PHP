<?php

////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////// CONEXION CON BBDD
//////////////////////////////////////////////////////////////////////////////////////////////

try {
	// Conectamos con el motor de bases de datos
	$pdo = new PDO("mysql:host=localhost; dbname=final; charset=utf8", "root", "", 
				   [PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"])  ;

} catch (PDOException $error) {
	echo $error->getMessage() ;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////// POBLADO DE BBDD
//////////////////////////////////////////////////////////////////////////////////////////////

// // CONSULTA INSERCION ESTADOS
// $ch = curl_init();

// $query_estados = "{\"query\":\"{topBeers(first: 50, after: 1) { totalCount last items { brewer { country { id name } state { id name } } } } } \",\"variables\":\"{}\",\"operationName\":null}";

// curl_setopt($ch, CURLOPT_URL, "https://api.r8.beer/v1/api/graphql/");
// curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
// curl_setopt($ch, CURLOPT_POSTFIELDS, $query_estados);

  
// curl_setopt($ch, CURLOPT_POST, 1);

// $headers = array();
// $headers[] = "Content-Type: application/json";
// $headers[] = "Accept: application/json";
// $headers[] = "X-Api-Key:DkoCwjsio7Ou2UmtPgKX7AQ5BnUtGtV3KpNJJtQg";
// curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

// $result_estados = curl_exec($ch);
// // echo "<pre>" ;
// // $cervezas = json_decode($result,true);
// // print_r(json_decode($result,true));
// // echo "</pre>";
// if (curl_errno($ch)) {
//     echo 'Error:' . curl_error($ch);
// }
// curl_close ($ch);
// // echo "<pre>" ;
//  $estados = json_decode($result_estados);
// // print_r(json_decode($result_zona));
// // echo "</pre>";

// $query_estados_intoDB = "INSERT INTO estado (idEstado_api,nombre)
// VALUES (:idApi_est,:nom) " ;
	
// 	$sqlp= $pdo->prepare($query_estados_intoDB);

// 	foreach ($estados->data->topBeers->items as $item):
// 		if($item->brewer->state == null):
// 			$sqlp->bindValue(":nom", null);
// 		else :
// 			$sqlp->bindValue(":nom", $item->brewer->state->name);
// 			$sqlp->bindValue(":idApi_est", $item->brewer->state->id);
// 		endif;
		
// 		$sqlp->execute() ;
// 			//echo "Insertada ".$item->brewer->state->name." <br/>" ;
		
// endforeach ;


// ////////////////////////////////////////////////////////////////////////////////////////////////////
// /////////////////////////////////////////////////////////////////////////////////////////////////
// //////////////////////////////////////////////////////////////////////////////////////////////

// // CONSULTA INSERCION FABRICANTE
$ch = curl_init();

$query_fabricante = "{\"query\":\"query{ topBeers(first:50 , after:1) { totalCount last items { brewer { id name city streetAddress country { id name } state { id name } } } } }\",\"variables\":\"{}\",\"operationName\":null}";
	
curl_setopt($ch, CURLOPT_URL, "https://api.r8.beer/v1/api/graphql/");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $query_fabricante);

  
curl_setopt($ch, CURLOPT_POST, 1);

$headers = array();
$headers[] = "Content-Type: application/json";
$headers[] = "Accept: application/json";
$headers[] = "X-Api-Key:DkoCwjsio7Ou2UmtPgKX7AQ5BnUtGtV3KpNJJtQg";
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

$result_fabricante = curl_exec($ch);
// echo "<pre>" ;
// $cervezas = json_decode($result,true);
// print_r(json_decode($result,true));
// echo "</pre>";
if (curl_errno($ch)) {
    echo 'Error:' . curl_error($ch);
}
curl_close ($ch);
// echo "<pre>" ;
 $fabricante = json_decode($result_fabricante);
// print_r(json_decode($result_zona));
// echo "</pre>";

$query_fabricante_intoDB = "INSERT INTO fabricante(idFabricante_api,pais,direccion,nombre,idEstado)
VALUES (:idFab,:pa,:dir,:nom ,(SELECT idEstado FROM estado WHERE idEstado_api=:idEsta) ) " ;
	
	$sqlp= $pdo->prepare($query_fabricante_intoDB);

	foreach ($fabricante->data->topBeers->items as $item):
		echo "<pre>" ;
		print_r($item->brewer->name);
		print_r($item->brewer->country->name);
		//print_r($item->brewer->state->name);
		print_r($item->brewer->streetAddress);
		echo "</pre>" ;
		$sqlp->bindValue(":idFab", $item->brewer->country->id);
		$sqlp->bindValue(":pa", $item->brewer->country->name);
		$sqlp->bindValue(":nom", $item->brewer->name);

		if($item->brewer->streetAddress == null):
			$sqlp->bindValue(":dir", null);
		else :
			$sqlp->bindValue(":dir", $item->brewer->streetAddress);
		endif;

		// $sqlp->bindValue(":idEsta",  $item->brewer->state->id);

		if($item->brewer->state == null):
						$sqlp->bindValue(":idEsta", null);
					else :
						$sqlp->bindValue("idEsta", $item->brewer->state->id);
					endif;
		
		$sqlp->execute() ;
			echo "Insertada ".$item->brewer->name." <br/>" ;
		
endforeach ;

// ////////////////////////////////////////////////////////////////////////////////////////////////////
// /////////////////////////////////////////////////////////////////////////////////////////////////
// //////////////////////////////////////////////////////////////////////////////////////////////

// // CONSULTA INSERCION ZONA
// $ch = curl_init();

// $query_zona = "{\"query\":\"{topBeers(first: 50, after: 1) { totalCount last items { brewer { country { id name } state { id name } } } } } \",\"variables\":\"{}\",\"operationName\":null}";

// curl_setopt($ch, CURLOPT_URL, "https://api.r8.beer/v1/api/graphql/");
// curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
// curl_setopt($ch, CURLOPT_POSTFIELDS, $query_zona);

  
// curl_setopt($ch, CURLOPT_POST, 1);

// $headers = array();
// $headers[] = "Content-Type: application/json";
// $headers[] = "Accept: application/json";
// $headers[] = "X-Api-Key:DkoCwjsio7Ou2UmtPgKX7AQ5BnUtGtV3KpNJJtQg";
// curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

// $result_zona = curl_exec($ch);
// // echo "<pre>" ;
// // $cervezas = json_decode($result,true);
// // print_r(json_decode($result,true));
// // echo "</pre>";
// if (curl_errno($ch)) {
//     echo 'Error:' . curl_error($ch);
// }
// curl_close ($ch);
// // echo "<pre>" ;
//  $zona = json_decode($result_zona);
// // print_r(json_decode($result_zona));
// // echo "</pre>";

// $query_zona_intoDB = "INSERT INTO zona_new (idApi_zona,nombre)
// VALUES (:idApi_zon,:nom) " ;
	
// 	$sqlp= $pdo->prepare($query_zona_intoDB);

// 	foreach ($zona->data->topBeers->items as $item):
// 		echo "<pre>" ;
// 		print_r($item->brewer->country->id);
// 		print_r($item->brewer->country->name);
// 		//print_r($item->brewer->state->name);
// 		echo "</pre>" ;

// 		$sqlp->bindValue(":idApi_zon", $item->brewer->country->id);
// 		$sqlp->bindValue(":nom", $item->brewer->country->name);
// 		// if($item->brewer->state == null):
// 		// 	$sqlp->bindValue(":est", null);
// 		// else :
// 		// 	$sqlp->bindValue(":est", $item->brewer->state->name);
// 		// endif;
		
// 		$sqlp->execute() ;
// 			echo "Insertada ".$item->brewer->country->name." <br/>" ;
		
// endforeach ;

// ////////////////////////////////////////////////////////////////////////////////////////////////////
// /////////////////////////////////////////////////////////////////////////////////////////////////
// //////////////////////////////////////////////////////////////////////////////////////////////

// // CONSULTA INSERCION CERVEZA
    
// Generated by curl-to-PHP: http://incarnate.github.io/curl-to-php/
$ch = curl_init();

$query_cerveza = "{\"query\":\"{topBeers(first: 50, after: 1) {totalCount last items { name description calories averageRating imageUrl id style { id name description } brewer { id name city streetAddress country { id name } state { id name } } } } }\",\"variables\":\"{}\",\"operationName\":null}";
								// { topBeers(first:50 , after:1) { totalCount last items { brewer { id name city streetAddress country { id name } state { id name } } } } }			 

curl_setopt($ch, CURLOPT_URL, "https://api.r8.beer/v1/api/graphql/");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $query_cerveza);

  
curl_setopt($ch, CURLOPT_POST, 1);

$headers = array();
$headers[] = "Content-Type: application/json";
$headers[] = "Accept: application/json";
$headers[] = "X-Api-Key:DkoCwjsio7Ou2UmtPgKX7AQ5BnUtGtV3KpNJJtQg";
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

$result_cerveza = curl_exec($ch);
// echo "<pre>" ;
// $cervezas = json_decode($result,true);
// print_r(json_decode($result,true));
// echo "</pre>";
if (curl_errno($ch)) {
    echo 'Error:' . curl_error($ch);
}
curl_close ($ch);

$cervezas = json_decode($result_cerveza);

$query_cerveza_intoDB = "INSERT INTO cerveza(nombre,descripcion,calorias,nota,imagen,idCerveza_api,idEstilo,idFabricante)
VALUES (:nom,:desct,:cal,:punct,:img,:idApi, (SELECT idEstilo FROM estilo WHERE idTipo_api=:idEst), (SELECT idFabricante FROM fabricante WHERE idFabricante_api=:idFab) );";

// $busqueda = "SELECT idEstilo FROM estilo,cerveza where estilo.nombre=cerveza.nombre";
// $busqueda_execute = $pdo->prepare($busqueda);
// print_r($busqueda_execute);

$sqlp= $pdo->prepare($query_cerveza_intoDB);
print_r($sqlp);

echo "<pre>" ;

$json = json_encode($cervezas);
print_r($cervezas->data->topBeers->items);
echo "</pre>";
foreach ($cervezas->data->topBeers->items as $item):
	// echo "<pre>" ;
	// print_r($item->name);
	// echo "</pre>" ;
	$sqlp->bindValue(":nom", $item->name , PDO::PARAM_STR);
	$sqlp->bindValue(":desct", $item->description , PDO::PARAM_STR);
	$sqlp->bindValue(":cal", $item->calories , PDO::PARAM_STR);
	$sqlp->bindValue(":punct", $item->averageRating ,PDO::PARAM_STR );
	$sqlp->bindValue(":img", $item->imageUrl , PDO::PARAM_STR);
	$sqlp->bindValue(":idApi", $item->id , PDO::PARAM_STR);
	$sqlp->bindValue(":idEst", $item->style->id, PDO::PARAM_STR);
	$sqlp->bindValue(":idFab", $item->brewer->country->id, PDO::PARAM_STR);
	
	
	$sqlp->execute() ;
		echo "Insertada $item->name<br/>" ;
	
endforeach ;

////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////

// CONSULTA INSERCION estilo
    
// Generated by curl-to-PHP: http://incarnate.github.io/curl-to-php/
// $ch = curl_init();

// $query_tipos = "{\"query\":\"{topBeers(first: 50, after: 1) {totalCount last items { name description calories averageRating imageUrl id style { id name description } } } }\",\"variables\":\"{}\",\"operationName\":null}";

// curl_setopt($ch, CURLOPT_URL, "https://api.r8.beer/v1/api/graphql/");
// curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
// curl_setopt($ch, CURLOPT_POSTFIELDS, $query_tipos);

  
// curl_setopt($ch, CURLOPT_POST, 1);

// $headers = array();
// $headers[] = "Content-Type: application/json";
// $headers[] = "Accept: application/json";
// $headers[] = "X-Api-Key:DkoCwjsio7Ou2UmtPgKX7AQ5BnUtGtV3KpNJJtQg";
// curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

// $result_tipos = curl_exec($ch);
// // echo "<pre>" ;
// // $cervezas = json_decode($result,true);
// // print_r(json_decode($result,true));
// // echo "</pre>";
// if (curl_errno($ch)) {
//     echo 'Error:' . curl_error($ch);
// }
// curl_close ($ch);

// $tipos = json_decode($result_tipos);

// $query_tipos_intoDB = "INSERT INTO estilo (nombre,descripcion,idTipo_api)
// VALUES (:nom,:desct,:idApi) " ;

// $sqlp= $pdo->prepare($query_tipos_intoDB);

// // echo "<pre>" ;

// // // $json = json_encode($tipos);
// // print_r($tipos->data->topBeers->items);
// // echo "</pre>";
// foreach ($tipos->data->topBeers->items as $item):
// 	// echo "<pre>" ;
// 	// print_r($item->name);
// 	// echo "</pre>" ;
// 	$sqlp->bindValue(":nom", $item->style->name);
// 	$sqlp->bindValue(":desct", $item->style->description);
// 	$sqlp->bindValue(":idApi", $item->style->id);
	
// 	$sqlp->execute() ;
// 		echo "Insertada $item->name<br/>" ;
	
// endforeach ;
