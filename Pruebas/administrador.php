<?php 
include "cabecera.php";
session_start();
error_reporting(0);

if(!$_SESSION['logueado']){
	echo "permiso denegado";
	die();
}

session_destroy();
 ?>

 <h2><?php echo 'usuario activo: '.$_SESSION['usuario']; ?></h2>


</body>
</html>
