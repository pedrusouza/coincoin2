<?php
	session_start();
  class db {

  //host
  private $host = 'localhost';

  //usuario
  private $usuario = 'root';

  //senha
  private $senha = '';

  //banco de dados
  private $database = 'engne598_coincoin';
  public function conecta_mysql(){

    //criar conexão
    $con = mysqli_connect($this->host, $this->usuario, $this->senha, $this->database);

    //ajustar o charset
    mysqli_set_charset($con, 'utf8');

    if(mysqli_connect_errno()){
      echo 'ERRO: '.mysqli_connect_error();
    }

    return $con;

  }
}
	$Email = $_POST['Email'];
	$Sen = $_POST['Password'];
	$sql = "SELECT id, nome, email, saldo, imagem, privilegio, hash FROM usuarios WHERE email = '$Email' AND privilegio = '2'";
	$objDb = new db();
	$link = $objDb->conecta_mysql();
	$resultado_id = mysqli_query($link, $sql);
	$dados_usuario = mysqli_fetch_array($resultado_id);
		if(isset($dados_usuario['email']) && password_verify($_POST["Password"],$dados_usuario['hash'])){

      //$_SESSION['id_usuario'] = $dados_usuario['id'];
      $_SESSION['email'] = $dados_usuario['email'];
			$_SESSION['nome'] = $dados_usuario['nome'];
			//$_SESSION['cpf'] = $dados_usuario['cpf'];
			$_SESSION['saldo'] = $dados_usuario['saldo'];
      //$_SESSION['Senha'] = $dados_usuario['Senha'];
      header('Location: usuarios/clientes.php');
      } else {
        header('Location: index.php?erro=1');
      }
?>
