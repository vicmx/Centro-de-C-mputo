<?php
$estatus="enabled";
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
    $mensaje2="<div class='alert alert-success' role='alert'>
    <h4 class='alert-heading'>Lo sentimos :( !</h4>
    <p>El registro de tu llegada no a sido registrado correctamente... <br> favor de consultar al encargado del centro de cómputo.</p>
    <hr>                
    </div>"; 

     require_once("Conexion.php");	
        $error='';
        $cont=0;
      
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
        
        $porcion1= explode(" ",$fecha_hora_actual);
        $fecha_insertar=$porcion1[0];
        $porcion =explode("-", $fecha_insertar);
        
        global $query2, $query3;
       
        
         $query2="INSERT INTO registros (regid, matricula, foto, nombre, carrera_id, carrera, hora_entrada, hora_salida, asunto, docente, asignatura, observaciones) 
            VALUES (NULL,'$Mat','$foto','$nombre','$IDcarrera','$carrera','$fecha_hora_actual','$fecha_hora_actual','$asunto','$profe','$materia','$observaciones')";
        
         $query3=" INSERT INTO contadores (aniodia,anio,mes)
        values ($porcion[2],$porcion[0],$porcion[1])";

        $contador="SELECT * FROM contadores where aniodia='$porcion[2]' and anio='$porcion[0]' and mes='$porcion[1]'";
        $id_reg_cont=$conexion->query($contador);
        $row2=mysqli_num_rows($id_reg_cont);  
        $cont=$id_reg_cont->fetch_assoc();

        // do{
            if($row2 != 1){
               $conexion->query($query3);
               $ultimo_id=$conexion->insert_id;

               if($carrera == "Informática"){
                $query4="UPDATE contadores set Info=Info+1 WHERE cid='$ultimo_id'";
                $conexion->query($query4);
               
                }else if($carrera == "Administración"){
                    $query4="UPDATE contadores SET Admon=Admon+1 WHERE cid='$ultimo_id'";
                    $conexion->query($query4);
                    
                }else if($carrera == "Contador Público"){
                    $query4="UPDATE contadores SET c_p=c_p+1 WHERE cid='$ultimo_id'";
                    $conexion->query($query4);
                    
                }else if($carrera == "Mercadotecnia y Medios Digitales" ){
                    $query4="UPDATE contadores SET MMD=MMD+1 WHERE cid='$ultimo_id'";
                    $conexion->query($query4);
                    
                }else if($carrera == "Derecho" ){
                    $query4="UPDATE contadores SET Der=Der+1 WHERE cid='$ultimo_id'";
                    $conexion->query($query4);
                    
                }               
            }else{

                if($carrera == "Informática"){
                    $query4="UPDATE contadores set Info=Info+1 WHERE cid=".$cont['cid'];
                    $conexion->query($query4);
                   
                    }else if($carrera == "Administración" ){
                        $query4="UPDATE contadores SET Admon=Admon+1 WHERE cid=".$cont['cid'];
                        $conexion->query($query4);
                        
                    }else if($carrera == "Contador Público" ){
                        $query4="UPDATE contadores SET c_p=c_p+1 WHERE cid=".$cont['cid'];
                        $conexion->query($query4);
                        
                    }else if($carrera == "Mercadotecnia y Medios Digitales" ){
                        $query4="UPDATE contadores SET MMD=MMD+1 WHERE cid=".$cont['cid'];
                        $conexion->query($query4);
                        
                    }else if($carrera == "Derecho" ){
                        $query4="UPDATE contadores SET Der=Der+1 WHERE cid=".$cont['cid'];
                        $conexion->query($query4);
                        
                    }               
            }

        // }while($cont != $ultimo_id);
        

            if($consulta3=$conexion->query($query2)){
                $mensaje="<div class='alert alert-success' role='alert'>
                <h4 class='alert-heading'>Bienvenido al centro de computo!</h4>
                <p>El registro de tu llegada a sido registrado correctamente... <br> favor de tomar asiento.</p>
                <hr>                
              </div>";      
              //echo $ultimo_id;  
              print_r($cont['cid']);
              echo $mensaje;
              
                header("refresh: 5; url=registro.php");
                } else {
                    $mensaje2="<div class='alert alert-success' role='alert'>
                <h4 class='alert-heading'>Lo sentimos :( !</h4>
                <p>El registro de tu llegada no a sido registrado correctamente... <br> favor de consultar al encargado del centro de cómputo.</p>
                <hr>              
              </div>";
                    echo $mensaje2 ;
                    echo $IDcarrera;
                    header("refresh: 5; url=registro.php");
                }
            //header("Location:index.html");
    }else{
       echo $mensaje2;
       header("refresh: 5; url=registro.php");
    }	
} 

     
 
require "vistas/registro.vista.php";
     
     