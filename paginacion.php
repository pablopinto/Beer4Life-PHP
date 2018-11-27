<?php
include_once "database/database.php";
$db = Database::getInstance() ;

	CONST MAX_REGISTROS = 6;


	$pag = $_GET['p'];

	if(!isset($pag)) die ("**error");
	// Lanzamos la consulta
	$resultado = ["error" => false , "html" => ""];
	$principio = ($pag-1)* MAX_REGISTROS;

	$sql = "SELECT * FROM cerveza LIMIT $principio, ".MAX_REGISTROS."; " ;
	

	if ($db->queryAction($sql)){
		$data="";
		while ($item = $db->getObject()){
			$item = $db->getObject();
			$imagen = $item->imagen;
			$nombre = $item->nombre;
			$id = $item->idCerveza;
			
			$data.=
 <<<EX
			<div class="col-12 col-sm-6 col-md-12 col-xl-6">
            	<div class="single-product-wrapper">
            	     <div class="product-img">
            	         <img src="$imagen" alt="">
					</div>
            	     <div class="product-description d-flex align-items-center justify-content-between">
            	         <div class="product-meta-data">
            	             <div class="line"></div>
            	             <a href="product-details.html">
								 <h6>$nombre</h6>
            	             </a>
            	         </div>
						<div class="ratings-cart text-right">
							 <div class="cart">
							 <form action="cart.php" method="get">
								 <input type="hidden" name="nombre" value="$nombre">
								 <input type="hidden" name="imagen" value="$imagen">
								 <input type="hidden" name="id" value="$id">
								<input type="submit" value="Comprar" data-toggle="tooltip" data-placement="left" title="Add to Cart" name="producto"><img src="img/core-img/cart.png" alt="">
							</form>
						</div>
            	         </div>
            	     </div>
				</div>
			</div>
EX;

			}
			
		$resultado["html"] = $data;
		}
		else{
		$resultado["error"]=true;
		}
header("content-Type: application/json");
echo json_encode($resultado) ;