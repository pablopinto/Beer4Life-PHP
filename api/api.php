<?php

function getBeers($db)
{
    $sql = "SELECT * FROM cervezas ;" ;

    if ($db -> queryAction($sql)):

        $data = [];
        while ($item = $db->getObject()) array_push($data,$item);
        sendResult($data);

    else:
        sendResult(true, "**ERROR : null , no hay informacion en la BBDD");
    endif;
}

function getBeerData($db)
{
    if (isset($_GET["id"])):
        $sql ="SELECT * FROM  cerveza WHERE idCerveza_api =".$_GET["id"];
    
        if($db -> queryAction($sql)):
            sendResult($db->getObject());
        else:
            sendResult(true , " **Error: No se ha encontrado la cerveza");
        endif;
    
        else : 
            sendResult(true, "**ERROR: nose ha encontrado el id");
        endif;

}