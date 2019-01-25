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
$id = $_GET['id'];  

$sql_saldo = " SELECT * FROM usuarios where id = '$id'";
                $resultado_id = mysqli_query($link, $sql_saldo);
                if($resultado_id){
                while($registro = mysqli_fetch_array($resultado_id, MYSQLI_ASSOC)){
                        $valor_antes = $registro['saldo'];
                    }
                    }else{
                        echo 'Erro na consulta';
                    }

//$qtd_coins = $_POST['Coincoins'];


/*if (isset($qtd_coins)) {
    update(8.00, 84);
}   else {
        die("ERRO: ID não definido.");
    }
?>*/

$qtd_coins = $_POST['Coincoins'];
$novo_valor = $valor_antes + $qtd_coins;
$sql = "UPDATE `usuarios` SET `saldo` = '$novo_valor' WHERE id = '$id'";
mysqli_query($link, $sql);
mysqli_query($link, $sql_saldo);
?>