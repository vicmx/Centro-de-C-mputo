<?php 
include "cabecera.php";
?>

<style type="text/css">
.alert{
    width: 40%;
}
.fondo{
    background-image: url("images/login.jpg");
}
</style>

<!DOCTYPE html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/Style.css">


    <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>

    <title>Login | EESM</title> 
  </head>

<body class="fondo">
	<div class="col-sm-12 col-md-9 ">
        <h1 class="display-4 with ">Login</h1>
            
			<form class='mt-5' action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" name="formuser">
				<div class="col-md-7">
                <label for="inlineFormInputGroup">Usuario</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                    <div class="input-group-text"><i class=" fa fa-user"></i></div>
                    </div>
                    <input type="text" name="txtuser" class="form-control">
                </div>
                </div> 

                <div class="col-md-7">
                <label for="inlineFormInputGroup">Contraseña</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                    <div class="input-group-text"><i class="fas fa-unlock"></i></div>
                    </div>
                    <input type="password" name="txtpassword" class="form-control">
                </div>
                </div> 

				<button type="submit" class="btn btn-outline-light mt-1 ml-3" name="enviar-u">Ingresar</button>

			</form>
	</div>

</body>
</html>
<?php
        if (isset($_POST['enviar-u'])) {
            $consulta = "select username, password from admis where username = '".$_POST['txtuser']."'";
            $resultado = $mysqli ->query($consulta);

            while ($fila = mysqli_fetch_assoc($resultado)) {
                $user_name = $fila['username'];
                $user_pass = $fila['password'];
            }
            

            if(isset($user_name)){
                if(md5($_POST['txtpassword'])==$user_pass){
                    session_start();
                    $_SESSION['usuario'] = $user_name;
                    header('location: administrador.php');
                }else{
                echo "<div class='alert alert-warning ml-4 mt-3' role='alert'>Contraseña incorrecta</div>";
                }
            }else{
                echo "<div class='alert alert-danger ml-4 mt-3' role='alert'>Usuario no encontrado</div>"; 
            }

    }

     
   ?>

