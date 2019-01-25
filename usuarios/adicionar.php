<?php 	 

//require_once('functions.php');
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
        mysqli_set_charset($con, 'utf8_general_ci');

        if(mysqli_connect_errno()){
            echo 'ERRO: '.mysqli_connect_error();
        }

        return $con;
    }
}

$obj_db = new db;
$link = $obj_db->conecta_mysql();

$qtd_coins = $_POST['Coincoins'];
$id = $_GET['id'];

/*if (isset($qtd_coins)) {
    update(8.00, 84);
}   else {
        die("ERRO: ID não definido.");
    }
?>*/

$sql = "UPDATE `usuarios` SET `saldo` = '$qtd_coins' WHERE id = 84";
mysqli_query($link, $sql);
echo($qtd_coins);
echo($sql);
echo($id);
?>