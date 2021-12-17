<?php

    $count = 5;
    while($count < 100){
        echo "INSERT INTO produtos (titulo, valor) VALUES ('TESTE$count', '20');";

        $count = $count + 1;
    }