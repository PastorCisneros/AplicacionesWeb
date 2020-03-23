<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:loginAdmin.php");
} else {
?>

</style>
<?php include("includes/header.php"); ?>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Administrador:<?php echo $_SESSION['session_username'];?></a>
    </div>
   
    <ul class="nav navbar-nav navbar-right">
      
      <li><a href="logout.php"><span class="glyphicon glyphicon-log-in"></span> Cerrar Sesion</a></li>
    </ul>
  </div>
</nav>
  



<body style="background-color:#f5f5dc;">
<div>
<?php
// Te recomiendo utilizar esta conección, la que utilizas ya no es la recomendada. 
$link = new PDO('mysql:host=localhost;dbname=php_comentario', 'root', ''); // el campo vaciío es para la password. 

?>


<h2 style="color:#82CACD">GenerarXML</h2>
<div class="receipt-left">
							<img class="img-responsive" alt="iamgurdeeposahan" src="img/xml.png" style="width: 71px; border-radius: 43px;">
</div>
<table class="table table-striped">
  	
		<thead>
		<tr>
			<th>ID User</th>
            <th>Nombre</th>
            <th>Username</th>
            <th>Generar XML</th>


        
		</tr>
		</thead>
<?php 
 
 foreach ($link->query("SELECT * from usuarios WHERE administrador =0") as $row){ // aca puedes hacer la consulta e iterarla con each. ?> 
	<td><?php echo $row['id']   ?></td>
  <td><?php echo $row['nombre']   ?></td>
    <td><?php echo $row['usuarioAdministrador']   ?></td>
    <td>
    <a  href="generarXmlComentario.php">
          <span class="glyphicon glyphicon-copy"></span>
    </a>
    </td>


    
    
  
   
    
     </form>
    </tr>          
    

    
 
<?php
	}
?>
</table>
<br>





</div>



<?php
}
?>
</body>