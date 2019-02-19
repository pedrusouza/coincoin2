<?php 	 

require_once('functions.php'); 		  

if (isset($_POST["usuario_id"])) {	  
  $nada = see($_GET['id']);
  echo $nada;
} else {	    
  die("ERRO: ID não definido.");
}

?>