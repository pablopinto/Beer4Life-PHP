<?php

class Database {

////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////// VARIABLES
//////////////////////////////////////////////////////////////////////////////////////////////

    private $dbHost = "localhost" ;
    private $dbUser = "root" ;
    private $dbPass = "" ;
    private $dbName = "final" ;

    private static $res ;
    private static $instance = null ;
    private static $db ;
    
    
////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////// FUNCIONES
//////////////////////////////////////////////////////////////////////////////////////////////

    private function __construct()  
    {
        $this->connect() ;
    }

    public function __destruct() 
    {	
        Database::$db->close() ;
    }

    private function __clone() { }

    public function __wakeup() 
    {
        $this->connect() ;
    }

    public static function getInstance() 
	{
		if (is_null(self::$instance)):
			self::$instance = new Database() ;
		endif ;
			
		return self::$instance ;
    }

    public function queryAction($sql):bool 
	{
		self::$res = self::$db->query($sql) 
            or die ("**Se ha producido un error de queryAction") ;
		if (is_object(self::$res)) return (self::$res->num_rows > 0) ;
			else
		return (self::$db->affected_rows > 0) ;
    }
    
    public function getObject($class="StdClass")
	{
		return self::$res->fetch_object($class) ;
    }

    private function connect() 
	{
			self::$db = new mysqli($this->dbHost, 
            $this->dbUser, 
            $this->dbPass)
     or die("**Se ha producido un error en la conexión con el motor de bases de datos.") ;
    self::$db->select_db($this->dbName) ;
    self::$db->set_charset("utf8") ;
    }
}
        