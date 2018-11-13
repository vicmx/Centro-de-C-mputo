<?php
include "cabecera.php";
global $mysqli;
//La conexión va 1 vez en la cabecera.php no es necesario agregarla aquí
$sql ="select regid, nombre, matricula from registros ORDER BY nombre DESC ";

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
$result2->close();//liberar recurso de consulta dentro del while.

//La conexión se cierra en el archivo pie.php
include "pie.php";
?>
