<?php		

mysqli_report(MYSQLI_REPORT_STRICT);

function open_database() {
		try {		

				$conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, 'engne598_coincoin');
				return $conn;		
			}

		 catch (Exception $e) {
		 			echo $e->getMessage();			
		 			return null;		
		 	}	
}		

function close_database($conn) {

		try {			
					mysqli_close($conn);
				} catch (Exception $e) {

						echo $e->getMessage();		
				}

}
// Pesquisa um Registro pelo ID em uma Tabela

function find($table = null, $id = null ) {

	$database = open_database();
	$found = null;

	try {
		if($id) {
			$sql = "SELECT * FROM ".$table." WHERE id = ".$id;
			$result = $database->query($sql);

		if($result->num_rows > 0) {

			$found = $result->fetch_assoc();
		}

	} else {

		$sql = "SELECT * FROM ".$table;
		$result = $database->query($sql);

		if($result->num_rows > 0) {

	        $found = array();	

	        while ($row = $result->fetch_assoc()) {	          
	        	array_push($found, $row);	        } 
		}
	}
	} catch (Exception $e) {
		$_SESSION['message'] = $e->GetMessage();
		$_SESSION['type'] = 'danger';
	}

	close_database($database);
	return $found;
}

function find_all( $table ) {

	return find($table);
}

function remove( $table = null, $id = null ) {		
  $database = open_database();			  

  try {	  
    if ($id) {
		//$sql = "DELETE FROM " . $table . " WHERE id = " . $id;
        $sql = "UPDATE " . $table . " SET `verificado`= '2' WHERE id = ". $id;   
        $result = $database->query($sql);

        if ($result) {   		     
            $_SESSION['message'] = "Registro Removido com Sucesso.";	       
            $_SESSION['type'] = 'success';	
        }
    }	  
  } catch (Exception $e) {
  	    $_SESSION['message'] = $e->GetMessage();	    
  	    $_SESSION['type'] = 'danger';	  
  }		  
  close_database($database);		  
}

function remove_definitivo( $table = null, $id = null ) {		
	$database = open_database();			  
  
	try {	  
	  if ($id) {
		  $sql = "DELETE FROM " . $table . " WHERE id = " . $id;
		  //$sql = "UPDATE " . $table . " SET `verificado`= '2' WHERE id = ". $id;   
		  $result = $database->query($sql);
  
		  if ($result) {		     
			  $_SESSION['message'] = "Registro Removido com Sucesso.";	       
			  $_SESSION['type'] = 'success';	
		  }
		  else
		  	echo ("Remova a(s) loja(s) ligadas a este lojista antes de excluí-lo.");
	  }	  
	} catch (Exception $e) {
			$_SESSION['message'] = $e->GetMessage();	    
			$_SESSION['type'] = 'danger';	  
	}		  
	close_database($database);		  
  }

function remove_loja_definitivo( $table = null, $id = null ) {		
	$database = open_database();			  
  
	try {	  
	  if ($id) {
		  $sql = "DELETE FROM " . $table . " WHERE cnpj = " . $id;
		  $result = $database->query($sql);
  
		  if ($result) {		     
			  $_SESSION['message'] = "Registro Removido com Sucesso.";	       
			  $_SESSION['type'] = 'success';	
		  }
		  else
		  	echo ("Remova a(s) loja(s) ligadas a este lojista antes de excluí-lo.");
	  }	  
	} catch (Exception $e) {
			$_SESSION['message'] = $e->GetMessage();	    
			$_SESSION['type'] = 'danger';	  
	}		  
	close_database($database);		  
  }

function update_coins( $table = null, $saldo = null, $id = null) {
	$database = open_database();			  
  
	try {	  
	  if ($id) {		
		  $sql = "UPDATE " . $table . " SET `saldo`= '$saldo', WHERE id = ". $id;	      
		  $result = $database->query($sql);		      
  
		  if ($result) {   		     
			  $_SESSION['message'] = "Registro Removido com Sucesso.";	       
			  $_SESSION['type'] = 'success';	
		  }	  
	  }	  
	} catch (Exception $e) { 		    
			$_SESSION['message'] = $e->GetMessage();	    
			$_SESSION['type'] = 'danger';
	}		  
	close_database($database);	
  }

  function view( $table = null, $id = null ) {		
	$database = open_database();			  
  
	try {
		if ($id) {
			$sql = "SELECT * FROM " . $table . " WHERE id = " . $id;	      
			$result = $database->query($sql);		      
			$output .= '
			<div class="table-responsive">
				<table class="table table-bordered">';
				while($registro = mysqli_fetch_array($result, MYSQLI_ASSOC)){
					$output .= '
						<tr>
							<td><label>Saldo</label></td>
							<td>'.$registro["saldo"].'</td>
						</tr>
					';
				}
				$output .= "</table></div>";
				echo $output;
			}else{
				echo 'Erro na consulta';
			}
	} catch (Exception $e) {
			$_SESSION['message'] = $e->GetMessage();	    
			$_SESSION['type'] = 'danger';	  
	}		  
	close_database($database);		  
  }
