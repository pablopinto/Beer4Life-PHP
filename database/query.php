<?php

require_once "database.php" ;
class consulta{
function fill_main(){

	$db = Database::getInstance() ;
	$sql = "SELECT * FROM cerveza ;" ;
	
	// Lanzamos la consulta
	if ($db->queryAction($sql)):

		$data = "" ;
		$max = 15;
		$i = 0 ;
		while ($i < 15):
			$item = $db->getObject();
			$imagen = $item->imagen;
			$nombre = $item->nombre;
			?>
            <div class="single-products-catagory clearfix">
                    <a href="shop.php">
                        <img src="<?php echo "$imagen" ;?>" alt="">
                        <!-- Hover Content -->
                        <div class="hover-content">
                            <div class="line"></div>
                            <!-- <p>Desde 1,02€</p> -->
                            <h4><?php echo "$nombre"; ?></h4>
                        </div>
                    </a>
                </div>
		<?php
		$i +=1 ;
		endwhile ;
	endif;
}

function fill_shop(){

	$db = Database::getInstance() ;
	$sql = "SELECT * FROM cerveza ;" ;
	
	// Lanzamos la consulta
	if ($db->queryAction($sql)):
		$uno = $_GET['contenido12'];
		$max = null;
		if ($uno):
			$max =12;
		else:
			$max =24;
		endif;
		$i = 0 ;
		while ($i < $max):
			// poner_bonito($item);
			// poner_bonito($item->imagen);
			// poner_bonito($item->nombre);
			$item = $db->getObject();
			$imagen = $item->imagen;
			$nombre = $item->nombre;
			?>
			<div class="col-12 col-sm-6 col-md-12 col-xl-6">
            	<div class="single-product-wrapper">
            	     <!-- Product Image -->
            	     <div class="product-img">
            	         <img src="<?php echo "$imagen" ;?>" alt="">
            	         <!-- Hover Thumb -->
            	         <img class="hover-img" src="<?php echo "$imagen" ;?>" alt="">
					</div>
            	     <!-- Product Description -->
            	     <div class="product-description d-flex align-items-center justify-content-between">
            	         <!-- Product Meta Data -->
            	         <div class="product-meta-data">
            	             <div class="line"></div>
            	             <!-- <p class="product-price">$180</p> -->
            	             <a href="product-details.html">
            	                 <h6><?php echo "$nombre"; ?></h6>
            	             </a>
            	         </div>
            	         <!-- Ratings & Cart -->
						<div class="ratings-cart text-right">
            	             <div class="ratings">
								<?php
								$j  = 0;
								$rating = $item->nota;
								while ($j < $rating):
									?>
								<i class="fa fa-star" aria-hidden="true"></i>
								<?php
								$j += 1;
								endwhile;
								?>
            	             </div>
            	             <div class="cart">
            	                 <a href="cart.html" data-toggle="tooltip" data-placement="left" title="Add to Cart"><img src="img/core-img/cart.png" alt=""></a>
            	             </div>
            	         </div>
            	     </div>
				</div>
			</div>
		<?php
		$i +=1 ;
		endwhile ;
	endif;
}

function fill_style(){
	
	$db = Database::getInstance() ;
	$sql = "SELECT * FROM estilo ;" ;
	
	// Lanzamos la consulta
	if ($db->queryAction($sql)):

		$i = 0;
		$fin = 6;
		while ($i < $fin ) :
			// poner_bonito($item);
			// poner_bonito($item->imagen);
			// poner_bonito($item->nombre);
			$item = $db->getObject();
			$nombre = $item->nombre;
		?>
            <li><a href="#" id="<?php $_GET['contenidos'] ?>"><?php echo "$nombre"; ?></a></li>
		<?php
		$i += 1;
		endwhile ;
	endif;
}

function fill_fab(){
	
	$db = Database::getInstance() ;
	$sql = "SELECT * FROM fabricante ;" ;
	
	// Lanzamos la consulta
	if ($db->queryAction($sql)):

		while ($item = $db->getObject()):
			// poner_bonito($item);
			// poner_bonito($item->imagen);
			// poner_bonito($item->nombre);
			$nombre = $item->nombre;
		?>
		<div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="amado">
        	<label class="form-check-label" for="amado"><?php echo "$nombre"; ?></label>
        </div>
		<?php
		endwhile ;
	endif;
}







	function poner_bonito($objeto){
		echo "<pre>";
		print_r($objeto);
		echo "</pre>";
	}
}


