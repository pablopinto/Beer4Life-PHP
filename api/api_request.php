<?php
    require_once "../database/database.php";
    require_once "api.php";

    function sendResult(...$params)
    {
        if(empty($params)):
            throw new Exception("**Se ha producido un error");
        else : 
            if (is_bool ($params[0])):
                $json["error"] = $params[0])):
                $json["mensaje"] = (isset($params[1]))?$params[1]:"";
            else :
                 $json["error"] = false;
                 $json["datos"] = $params[0];
            endif;
        endif;
        header("Content-type: application/json");
        echo json_encode($json);
    }
    if (isset($_GET["token"])):

		$token = $_GET["token"] ;
		$db = Database::getInstance() ;
		$sql = "SELECT * FROM usuario WHERE SHA1(CONCAT(usuario,'*',email,'*',password))='$token' ;" ;

		if ($db->consulta($sql)):
			if (isset($_GET["cod"])):
				switch($_GET["cod"]):
					case COP_ALL_FILMS:
						getAllFilms($db) ;
						break ;
					case COP_INF_FILMS:
						getInfoFilm($db) ;
						break ;
					default:
						enviarResultado(true, "**ERROR: el código de operación proporcionado no es correcto") ;
				endswitch ;
			else:
				enviarResultado(true, "**ERROR: no se ha especificado un código de operación") ;
			endif; 
		else:
			enviarResultado(true, "**ERROR: la API KEY no es correcta") ;
		endif ;
	else:
		enviarResultado(true, "*ERROR: no se proporciona APIKEY necesaria") ;
	endif ;

