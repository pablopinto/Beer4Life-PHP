<?php

	require_once "database/database.php" ;

	class Usuario {

		private $idUsuario ;
		private $usuario ;
		private $email ;
		private $nombre ;
		private $apellidos ;
		private $imagen ;
		private $password;


		private function __construct() 
		{
		}

		public  function __get($prop)
		{
			return $this->$prop ;
		}

		public function setNombre($nom) 
		{ 
			$nombre = $nom ;	
		}

		public function setApellidos($ape) 
		{ 
			$this->apellidos = $ape ;
		}

		public function setImagen($ima) 
		{ 
			$this->imagen = $ima ;
        }
        
		public function update()
		{
			// Añade aquí el código necesario !!!!!!
		}

		//
		public function __toString()
		{
			return "Eres: $this->nombre $this->apellidos<br/>" ;
		}


	}