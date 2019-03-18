<?php 	 

require_once('functions.php'); 		  

if (isset($_GET['id'])) {
  delete_definitivo_loja($_GET['id']);	  
} else {
  die("ERRO: ID não definido.");	
}	

?>