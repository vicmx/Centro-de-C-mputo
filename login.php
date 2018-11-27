<?php
include "conexion.php";
 
 $onlyuser = 'disabled';
 $GLOBALS = ["$onlyuser"];
 ?>

 <?php
if (isset($_POST['enviar-u'])) {
	$varpass = "";
	$consulta = "select nickname, password from usuarios where nickname = '".$_POST['txtnick']."'";
    $resultado = mysqli_query($conexion,$consulta);
       	while( $fila = mysqli_fetch_assoc($resultado) ) {
 		$varpass = $fila['password'];
	}
 	if(!empty($resultado)){
 		if($varpass == $_POST['txtpass']){
 			session_start();
 			$_SESSION['usuario']= $_POST['txtnick'];
 			$onlyuser = "";

 	}else{
 		echo "Datos incorrectos";
 	}
 	}
}

 ?>
<!DOCTYPE html>	
<html>
<head>
	<title></title>
</head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta charset="UTF-8">
<body>
	<form action="formulario_login.php" method="POST" name="formuser">
		<label>Usuario</label>
		<input type="text" name="txtnick">
		<label>Contraseña</label>
		<input type="password" name="txtpass">
		<input type="submit" name="enviar-u" value="Ingresar">
		<input type="submit" name="prueba" <?php echo $onlyuser ?>>
	</form>
</body>


</html>
