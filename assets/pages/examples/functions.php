<?php


require_once('../config.php');
require_once(DBAPI);

$usuarios = null;
$usuario = null;

function index() {

	global $usuarios;
	$usuarios = find_all('usuarios');
}