

<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/Style.css">


    <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>

    <title>Registro | EESM</title> 
  </head>
  <body class="fondo">

  <div class="  container mt-5">
    <div class="row d-flex jusntify-content-center ">
        <div class="col-sm-12 col-md-9 ">
            <h1 class="display-4 with text-info "  >Centro de Cómputo</h1>
            

            <form class='mt-5' action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST" name="Login">
                
                <div class="col-md-7">
                <label class="sr-only" for="inlineFormInputGroup">Matricula</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                    <div class="input-group-text"><i class=" fa fa-user"></i></div>
                    </div>
                    <input type="text" class="form-control" id="User" name="Mat" placeholder=<?php echo $placeholder1; ?>>
                     <div class="col-sm-12 col-md-2 d-flex justify-content-center">
                        <button type="submit" class="btn btn-outline-light ">Buscar</button> 
                    </div>
                </div>
                </div>                 
                <div class="col-md-7">
                <label class="sr-only" for="inlineFormInputGroup">Asunto</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                    <div class="input-group-text"><i class=" fa fa-search"></i></div>
                    </div>
                    <select name="asunto" class="form-control form-opacity" placeholder="asunto" id="">                     
                     <option value="clase">Clase</option>
                     <option value="consulta">Consulta</option>
                    </select>
                </div>
                </div> 
                <div class="col-md-7">
                <label class="sr-only" for="inlineFormInputGroup">Docente</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                    <div class="input-group-text"><i class=" fa fa-user"></i></div>
                    </div>
                    <input type="text" class="form-control" id="docente" name="docente" placeholder=<?php echo $placeholder2; echo $estatus; ?> >
                </div>
                </div> 
                <div class="col-md-7">
                <label class="sr-only" for="inlineFormInputGroup">Asignatura</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                    <div class="input-group-text"><i class=" fa fa-user"></i></div>
                    </div>
                    <input type="text" class="form-control" id="docente" name="Asignatura" placeholder=<?php echo $placeholder3; echo $estatus; ?>>
                </div>
                </div> 
                
                <?php if(!empty($error)):  ?>
                    <div class="error">
                        <ul>
                        <?php echo $error;   ?> 
                        </ul>
                    </div>
                <?php endif;   ?> 
            </form>
        </div>
    </div>
  </div>
    


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>