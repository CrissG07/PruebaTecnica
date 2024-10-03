<?php

function abrirConexion(){
    global $conexion;

    $db_host='localhost';
    $db_nombre='pruebatecnica';
    $db_usuario='root';
    $db_password='';

    $conexion = new mysqli($db_host,$db_usuario,$db_password,$db_nombre);

    if($conexion->connect_error){
        die("Error en la conexion :" . $conexion->connect_error);
    }
}

function cerrarConexion(){
    global $conexion;
    $conexion->close();
}


?>