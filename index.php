
<?php
include "cabecera.php";
global $mysqli;

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

include "pie.php";
