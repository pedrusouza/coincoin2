	<?php		
	require_once('../config.php');	
	require_once(DBAPI);


// Recuperamos a ação enviada pelo formulário
$a = $_GET['a'];
 
// Verificamos se a ação é de busca
if ($a == "buscar") {
 
	// Pegamos a palavra
	$palavra = trim($_POST['palavra']);
 
	// Verificamos no banco de dados produtos equivalente a palavra digitada
	$sql = mysql_query("SELECT * FROM transacoes WHERE nome LIKE '%".$palavra."%' ORDER BY nome");

	$sql2 = mysql_query("SELECT * FROM usuarios WHERE id='.$id')
 
	// Descobrimos o total de registros encontrados
	$numRegistros = mysql_num_rows($sql);
 
	// Se houver pelo menos um registro, exibe-o
	if ($numRegistros != 0) {
		// Exibe os produtos e seus respectivos preços
		while ($usuario = mysql_fetch_object($sql)) {
			echo $usuario->nome . " (R$ ".$produto->valor.") <br />";
		}
	// Se não houver registros
	} else {
		echo "Nenhum produto foi encontrado com a palavra ".$palavra."";
	}
}
?>