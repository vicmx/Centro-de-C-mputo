<?php

$pagetitle="Tabla de alumnos";
include "cabecera.php";
//La conexión va 1 vez en la cabecera.php no es necesario agregarla aquí
$sql ="SELECT * FROM `registros` WHERE Date(`hora_entrada`) = DATE(CURDATE()) ";
$result = $mysqli ->query($sql);
/*obtener el array de objetos*/

?>
<form action="ConsultaRegistros.php" method="POST" name="cerrar-u">
<table class="table table-striped">
  	
		<thead>	
		<tr>
			<th>regid</th>
			<th>Matricula</th>
			<th>foto</th>
			<th>nombre</th>
			<th>carrera_id</th>
			<th>carrera</th>
			<th>hora_entrada</th>
			<th>hora_salida</th>
			<th>asunto</th>
				<th>docente</th>
			<th>asignatura</th>
			<th>observaciones</th>
			<th>estado</th>
		</tr>
		</thead>


		
<?php

$estado="";

while($fila= $result ->fetch_row()){

 	 if ($fila[7]== "0000-00-00 00:00:00") {
	/*si la fila 7 (hora de salida) esta completamente en ceros, el estado se marcara com inactivo*/
 $estado= '<img src="inline.png" border="1" alt="Este es el ejemplo de un texto alternativo" width="20" height="20">';


} else{
/*Si no esta en ceros, el script avluara que ek usuario ya ha salido*/
 	 $estado= '<img src="offline.png" border="1" alt="Este es el ejemplo de un texto alternativo" width="20" height="20">';}

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
        <td><?php echo $fila[11]?></td>
         <td><?php echo $estado?></td>
   
 <td><input type="submit" name="cerrar-u" value="Cerrar Sesion"></td>


    <?php

 	

 ?>
   
	
<?php
}

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
	obtener el array de objeto
*//*
	$sql2 ="UPDATE `registros` SET `hora_salida` = DATE(CURDATE()) WHERE `registros`.`regid` ='" . $mysqli ->real_escape_string( $fila[7] )."'";
	$result2 = $mysqli->query($sql2);
	$row =$result2->fetch_row();*/
/*Creamos la condicional que evalua si el alumno esta avtivo o no*/	


 	 

if (isset($_POST['cerrar-u'])) {
	
	$sql2 ="UPDATE `registros` SET `hora_salida` = DATE(CURDATE()) WHERE `registros`.`regid` ='" . $fila[0] ."'";
	$result2 = $mysqli->query($sql2);
	
	
 	}


?>

</tr>
</table>
</form>
<?php
/*
$mysqli ->real_escape_string(); Inserta de forma segura a la base de datos.
*/
/* liberar resultados */
$result->close();

/* //La conexión se cierra en el archivo pie.php
include "pie.php";*/
?>