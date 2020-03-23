<?php
session_start();
?>

<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
<?php require_once("Conexion.php"); ?>

<p><a href="index.php">MENU PRINCIPAL</a></p>

<?php

if(isset($_SESSION["session_username"])){
// echo "La sesión está puesta"; // para testeo
header("Location: index.php");
}

if(isset($_POST["login"])){

if(!empty($_POST['usuarioAdministrador']) && !empty($_POST['claveAdministrador'])) {
    $usuarioAdministrador=$_POST['usuarioAdministrador'];
    $claveAdministrador=$_POST['claveAdministrador'];

    
    
    
    $consulta =mysqli_query($conn,"SELECT * FROM usuarios WHERE usuarioAdministrador='".$usuarioAdministrador."' AND claveAdministrador='".$claveAdministrador."' AND administrador=0");

    $numeroFilas=mysqli_num_rows($consulta);
    if($numeroFilas!=0)

    {
    while($fila=mysqli_fetch_assoc($consulta))
    {
    $bdUsuarioAdministrador=$fila['usuarioAdministrador'];
    $bdClaveAdministrador=$fila['claveAdministrador'];
    }

    if($usuarioAdministrador == $bdUsuarioAdministrador && $claveAdministrador == $bdClaveAdministrador){
        $_SESSION['session_username']=$usuarioAdministrador;

        /* Redireccionar el navegador */
        header("Location: introDueno.php");
    }
    } else {

 $mensaje =  "Nombre de usuario o contraseña invalida!";
    }

} else {
    $mensaje = "Todos los campos son requeridos!";
}
}
?>

    <div class="container mlogin">
            <div id="login">
    <h1>Entrar Usuarios Regulares</h1>
<form name="loginform" id="loginform" action="" method="POST">
<img class="img-responsive" alt="iamgurdeeposahan" src="img/usuario.jpg" style="width: 71px; border-radius: 43px;">
    
    <p>
  
  
        <label for="user_login">Nombre de usuario<br />
        <input type="text" name="usuarioAdministrador" id="usuarioAdministrador" class="input" value="" size="20" /></label>
    </p>
    <p>
        <label for="user_pass">Contraseña<br />
        <input type="password" name="claveAdministrador" id="claveAdministrador" class="input" value="" size="20" /></label>
    </p>
        <p class="submit">
        <input type="submit" name="login" class="button" value="Entrar" />
    </p>
       
</form>

    </div>

    </div>
	
	<?php if (!empty($mensaje)) {echo "<p class=\"error\">" . "MENSAJE: ". $mensaje . "</p>";} ?>