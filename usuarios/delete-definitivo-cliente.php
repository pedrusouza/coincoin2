<?php 	 

require_once('functions.php'); 		  

if (isset($_GET['id'])) {	  
  delete_definitivo_cliente($_GET['id']);	  
} else {	    
  die("ERRO: ID não definido.");	
}	

?>