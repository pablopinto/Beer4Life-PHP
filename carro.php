<?php

	require_once "database/database.php" ;

	class carro {

		private $idCerveza;
		private $nombre ;
		private $descripcion ;
		private $calorias ;
		private $nota ;
		private $imagen ;
		private $idCerveza_api;

		private function __construct() 
		{
		}

		public function __get($prop)
		{
			return $this->$prop ;
		}

		public function setNombre($nom) 
		{ 
			$this->nombre = $nom ;
		}



		//
		public function __toString()
		{
			return "Eres: $this->nombre $this->apellidos<br/>" ;
		}


	}