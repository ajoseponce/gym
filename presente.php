<?php
include('lib/DB_Conectar.php');
include('classes/consultas.php');
$cliente = $consultas->getDatosClientesPeriodo($_REQUEST['dni_cliente']);
if($consultas->getValidaPresente($cliente->id_persona)==0){

    $id_presente = $consultas->save_presente($cliente->id_persona);
    echo 0;
}else{
    echo 1;
}

//return json data

?>