<?php

	require_once "database/database.php" ;
	require_once "usr_obj.php" ;

	class Sesion {

		private $expire_time = 500000000 ;

		private $usuario          = null ; 
		private static $instancia = null ;	
		private function __construct() { }
		private function __clone()    { }

    
    
		public function getUser():Usuario 
		{ 
			return $this->usuario ; 
		}

		public static function startSession() 
		{
			session_start();

			if (isset($_SESSION["session"])):
				self::$instancia = unserialize($_SESSION["session"]) ;
				//   echo("la sesion ya esta iniciada");
            else:
                
				if (is_null(self::$instancia)):
					self::$instancia = new Sesion() ;
					//   echo "Creada nueva Sesion";
				endif ;
			endif ;

			return self::$instancia ;
		}

		private function isExpired()
		{
			$tme_log = $_SESSION["time"] ;
			$tme_act = time() ;

			return (($tme_act - $tme_log) > $this->expire_time) ;
		}

		private function isLogged()
		{
			return !empty($_SESSION) ;
		}

		public function checkActiveSession() 
		{
			if ($this->isLogged()):

				if ($this->isExpired()):

					$this->close() ;

					return false ; 

				else:

					return true ;

				endif ;

			else:

				return false ; 	  

			endif ;
		}

		public function doLogin($usr, $pwd)
		{
			if ($this->isLogged()):
				 return true ;
			else :
				$db = Database::getInstance() ;

                $sql = "SELECT * FROM usuario WHERE usuario='$usr' AND password=MD5('$pwd') ;" ; 
                
				if ($db->queryAction($sql)):
					
					$this->usuario = $db->getObject("usuario") ;
					
					//Usuario::setNombre($obj->nombre);
					$_SESSION["email"] = $obj->email;
					$_SESSION["time"]    = time() ;
					$_SESSION["session"] = serialize(self::$instancia) ;
                    
					return true ;

				endif ;

			endif ;

			return false ;
		}

	
		public function redirect($url)
		{
			header("Location: $url") ;

			exit() ;
		}

		
		public function close()
		{
			session_unset() ;

			session_destroy() ;
		}

		public function __sleep()
		{
			return ["expire_time", "usuario"] ;
		}
		

		public function __toString()
		{
			return "<pre>".print_r($_SESSION,true)."</pre>" ;
		}
	}









