	<?php		
	require_once('../config.php');	
	require_once(DBAPI);

	$usuarios = null;	
	$usuario = null;		
	/**	 *  Listagem de Clientes	 */	

	function index() {

			global $transacoes;		
			$transacoes = find_all('transacoes');	
}	

	/* Exclusão de um usuário */

	function delete ($id = null) {

		global $usuario;
		$usuario = remove('usuarios', $id);

		header('location: clientes.php');
	}

	function find_transaction($table = null, $id = null ) {

	$database = open_database();
	$found = null;

	try {
		if($id) {
			$sql = "SELECT * FROM ".$table." WHERE id_user_origem || id_user_destino = ".$id;
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