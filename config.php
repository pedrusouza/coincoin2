<?php 
    //Nome do banco
    define('DB_NAME', 'engne598_coincoin');

    //Usuário do BD
    define('DB_USER', 'root');

    //Senha do banco de dados MySQL
    define('DB_PASSWORD', '');

    //nome do host MySQL
    define('DB_HOST', 'localhost');

    /** caminho absoluto para a pasta do sistema **/    
    if ( !defined('ABSPATH') )
          define('ABSPATH', dirname(__FILE__) . '/');         /** caminho no server para o sistema **/   
    if ( !defined('BASEURL') )
          define('BASEURL', '/coincoin2/');          /** caminho do arquivo de banco de dados **/
    if ( !defined('DBAPI') )
          define('DBAPI', ABSPATH . 'inc/database.php');
?>