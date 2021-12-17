<?php

    include 'conexao.php';

    $sql = $conn->query("SELECT * FROM produtos WHERE id = 1");
    $row->rowCount($sql);

    var_dump($row);