<?php
include "cabecera.php";
global $mysqli;

$mysqli = new mysqli('localhost', 'root', 'contra', 'registro_eesm');
/*
   * Esta es la forma OO "oficial" de hacerlo,
   * AUNQUE $connect_error estaba averiado hasta PHP 5.2.9 y 5.3.0.
*/
if ($mysqli->connect_error) {
	die('Error de Conexión (' . $mysqli->connect_errno . ') '
	    . $mysqli->connect_error);
}
/*
   * Use esto en lugar de $connect_error si necesita asegurarse
   * de la compatibilidad con versiones de PHP anteriores a 5.2.9 y 5.3.0.
*/
if (mysqli_connect_error()) {
	die('Error de Conexión (' . mysqli_connect_errno() . ') '
	    . mysqli_connect_error());
}
$sql ="select Matricula, Nombre, Hora_entrada, Hora_Salida carrera_id from alumnos ORDER BY Nombre DESC ";

$result = $mysqli ->query($sql);


/*obtener el array de objetos*/
while($fila= $result ->fetch_row()){

	echo $fila[0]."<br>"  ;
	echo $fila[1]."<br>"  ;
	$sql2 ="select nombre_carrera from carreras where cid=$fila[2]";
	$result2 = $mysqli->query($sql2);
	$row =$result2->fetch_row();
	echo $row[0] ."<br>";
}
/*liberar el conjunto de resultados*/
$result->close();
$result2->close();

echo 'Exito... ' . $mysqli->host_info . "\n";

$mysqli ->close();
include "pie.php";

?>
