<?php
// CONEXÃO COM BANCO DE DADOS
$servername = "localhost";
$username = "root";
$password = "";
$db_name = "essenz66_essenza";

$conn = mysqli_connect($servername, $username, $password, $db_name);

if(mysqli_connect_error()):
    echo "Falha na conexão: ".mysqli_connect_error();
endif;

?>