<?php 
include "cabecera.php";
session_start();

if(!isset($_SESSION['usuario']) || $_SESSION['usuario']==null){
	echo "permiso denegado";
	die();
}

session_destroy();
 ?>

 <h2><?php echo 'usuario activo: '.$_SESSION['usuario']; ?></h2>


</body>
</html>
