<?php 	 

require_once('functions.php');

$qtd_coins = $_POST['Coincoins'];
$id = $_GET['id'];

if (isset($qtd_coins)) {
    update($qtd_coins, 84);
}   else {
        die("ERRO: ID não definido.");
    }
?>