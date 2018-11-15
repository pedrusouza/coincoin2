	<?php		
	require_once('../config.php');	
	require_once(DBAPI);

	$usuarios = null;	
	$usuario = null;		
	/**	 *  Listagem de Clientes	 */	

	function index() {

			global $usuarios;		
			$usuarios = find_all('usuarios');	
}	

	/* Exclusão de um usuário */

	function delete ($id = null) {

		global $usuario;
		$usuario = remove('usuarios', $id);

		header('location: index.php');
	}