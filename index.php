
<?php
$mysqli = new mysqli('localhost', 'root', '122077', 'registros_eesm');

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

$sql = "Select Matricula, Nombre, carrera_id  from consulta_alumnos ORDER BY Nombre  desc";

$result = $mysqli->query($sql);



    /* obtener el array de objetos */
    while ($fila = $result->fetch_row()) {
        echo $fila[0] . "<br>" ;
        echo $fila[1] . "<br>";
        $sql2 = "Select nombre_carrera from carreras where cid =$fila[2]";

        $result2 = $mysqli->query($sql2);

        $row = $result2->fetch_row();

        echo $row[0] ."<br>";

        $result2->close();
    }

    /* liberar el conjunto de resultados */
$result->close();


echo 'Éxito... ' . $mysqli->host_info . "\n";

$mysqli->close();
?>
