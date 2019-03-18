<?php 	 

require_once('functions.php'); 		  

if (isset($_GET['id'])) {	  
  delete_lojistas_a_aprovar($_GET['id']);
} else {	    
  die("ERRO: ID não definido.");	
}
?>