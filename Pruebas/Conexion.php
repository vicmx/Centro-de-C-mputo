<?php
// Se establecen las variables con los datos de acceso
//$servidor = "mysql.hostinger.mx";
//$usuario = "u449168803_fredd";
//$contra = "Holaduck";
//$basedatos = "u449168803_phpf";


$servidor = "localhost";
$usuario = "root";
$contra = "";
$basedatos = "centrocomputo";
 

// se establece la conexion con la base de datos.
$conexion = mysqli_connect($servidor,$usuario,$contra,$basedatos);
// se evalua si no se ha producido la conexión en ese caso se finaliza
// la ejecución del programa
if( !$conexion ) { 
 die("Error en la conexión con la base de datos");
}
$conexion->set_charset("utf8");



?>