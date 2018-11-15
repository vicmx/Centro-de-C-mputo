<?php
$pagetitle="Tabla de Registros";
include "cabecera.php";
//La conexión va 1 vez en la cabecera.php no es necesario agregarla aquí
$sql ="SELECT * FROM registros ";
$result = $mysqli ->query($sql);
/*obtener el array de objetos*/
?>

<table class="table table-striped">
  	
		<thead>
		<tr>
			<th>regid</th>
			<th>Matricula</th>
			<th>foto</th>
			<th>nombre</th>
                        <th>Carrera_id</th>
			<th>Carrera</th>
			<th>Hora_entrada</th>
			<th>Hora_salida</th>
			<th>Asunto</th>
			<th>Docente</th>
                        <th>Asignatura</th>
                        <th>Observacion</th>
		</tr>
		</thead>
<?php
while($fila= $result ->fetch_row()){
/*
	echo $fila[0]."<br>"  ;
	echo $fila[1]."<br>"  ;
	echo $fila[2]."<br>"  ;
	echo $fila[3]."<br>"  ;
	echo $fila[4]."<br>"  ;
	echo $fila[5]."<br>"  ;
	echo $fila[6]."<br>"  ;
	echo $fila[7]."<br>"  ;
	echo $fila[8]."<br>"  ;
        echo $fila[9]."<br>"  ;
        echo $fila[10]."<br>"  ;
	/*obtener el array de objetos*/
	$sql2 ="select nombre_carrera from carreras where cid='" . $mysqli ->real_escape_string( $fila[4] )."'";
	$result2 = $mysqli->query($sql2);
	$row =$result2->fetch_row();
	
	?>
	<tr>
	<td><?php echo $fila[0]?></td>
    <td><?php echo $fila[1]?></td>
    <td><?php echo $fila[2]?></td>
    <td><?php echo $fila[3]?></td>

   <td><?php echo $fila[4]?></td>
   
    <td><?php echo $fila[5]?></td>
    <td><?php echo $fila[6]?></td>
    <td><?php echo $fila[7]?></td>
    <td><?php echo $fila[8]?></td>
    <td><?php echo $fila[9]?></td>
    <td><?php echo $fila[10]?></td>   
	
<?php
}
?>
</tr>
</table>
<?php
/*
$mysqli ->real_escape_string(); Inserta de forma segura a la base de datos.
*/
/* liberar resultados */
$result->close();
$result2->close();//liberar recurso de consulta dentro del while.
//La conexión se cierra en el archivo pie.php
include "pie.php";
?>
