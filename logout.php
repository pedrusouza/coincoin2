<?php
	session_start();
	unset($_SESSION['id_usuario']);
  unset($_SESSION['Email']);
	$url = 'index.php';
	echo'<META HTTP-EQUIV=Refresh CONTENT="0; URL='.$url.'">';
?>
