	<?php
	require_once('../config.php');
	require_once(DBAPI);

	$usuarios = null;
	$usuario = null;
	$lojas = null;
	$responsavel = null;
	/**	 *  Listagem de Clientes	 */	

	function index() {

			global $usuarios;
			$usuarios = find_all('usuarios');
}

	/**	 *  Listagem de Clientes	 */	

	function index_lojas() {

		global $lojas;
		$lojas = find_all('loja');
	}

	/* Exclusão de um usuário */

	function find_user($id = null ) {

		global $responsavel;
		$responsavel = find_user_loja('loja', $id = null );
	}

	/* Exclusão de um usuário */

	function delete ($id = null) {

		global $usuario;
		$usuario = remove('usuarios', $id);

		header('location: clientes.php');
	}

	function delete_clientes_a_aprovar ($id = null) {

		global $usuario;
		$usuario = remove('usuarios', $id);

		header('location: ../usuarios/clientes_para_aprovar.php');
	}

	function delete_lojistas_a_aprovar ($id = null) {

		global $usuario;
		$usuario = remove('usuarios', $id);

		header('location: ../usuarios/lojistas_para_aprovar.php');
	}

	function delete_logistas ($id = null) {

		global $usuario;
		$usuario = remove('usuarios', $id);

		header('location: lojistas.php');
	}

	function delete_definitivo_cliente ($id = null) {

		global $usuario;
		$usuario = remove_definitivo('usuarios', $id);

		header('location: excluir-definitivo-cliente.php');
	}

	function delete_definitivo_lojista ($id = null) {

		global $usuario;
		$usuario = remove_definitivo('usuarios', $id);

		//header('location: excluir-definitivo-lojista.php');
	}

	function delete_definitivo_loja ($id = null) {

		global $usuario;
		$usuario = remove_loja_definitivo('loja', $id);

		header('location: excluir-definitivo-cliente.php');
	}

	function update ($q_coins = null, $id = null) {

		global $usuario;
		$usuario = update_coins('usuarios', $q_coins, $id);

		header('location: clientes.php');
	}

	function see ($id = null) {

		global $usuario;
		$saldo = view('usuarios', $id);
		return $saldo;
		header('location: clientes.php');
	}
