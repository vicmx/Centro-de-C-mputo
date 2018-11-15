<?php
$estatus="disabled";
$placeholder1="'Ingresar tu Matricula' ";
$placeholder2="'Nombre del docente' ";
$placeholder3="'Nombre de tu Asignatura' ";

if(isset($_POST['Mat'])){
    $Mat=$_POST['Mat']; 
    $asunto=$_POST['asunto'];
    $profe=$_POST['docente'];
    $materia=$_POST['Asignatura'];

    // if($_POST['asunto']=="clase"){
    //      $estatus="enabled";
    //      $placeholder1="'$Mat' ";
         
    //  }
     
     require_once("Conexion.php");	
        $error='';
      
        $query="SELECT * FROM consulta_alumnos inner join carreras on carreras.cid=consulta_alumnos.carrera_id where consulta_alumnos.matricula='$Mat'"; 
        $consulta2=$conexion->query($query);
        $rows = mysqli_num_rows($consulta2);

    if($rows==1){
        while($alumno=$consulta2->fetch_assoc()){
            $nombre=$alumno['nombre'];
            $foto=$alumno['foto'];
            $IDcarrera=$alumno['carrera_id'];
            $carrera=$alumno['nombre_carrera'];
            $observaciones="te estoy mirando";   
            $fecha_hora_actual = date('Y-m-d H:i:s');        

        }  
        
        $query2="INSERT INTO registros (regid, matricula, foto, nombre, carrera_id, carrera, hora_entrada, hora_salida, asunto, docente, asignatura, observaciones) 
            VALUES (NULL,'$Mat','$foto','$nombre','$IDcarrera','$carrera','$fecha_hora_actual','$fecha_hora_actual','$asunto','$profe','$materia','$observaciones')";

            if($consulta3=$conexion->query($query2)){
              
                header("Location:previa.php");
                } else {
                    echo "Error: " . $query2 . "<br>" . mysqli_error($conexion);
                }
            //header("Location:index.html");
    }else{
        $error.='<li>los datos no son correctos</li>';
    }	
} 

     
 
require "vistas/registro.vista.php";
     
