<?php

    session_start();
    require 'conexao.php';
    $user = $_SESSION['id_usuario'];

    if(isset($_SESSION['logado']) && $_SESSION['logado'] == true){
        
        //MANDA PARA TABELA CARRINHO
        $sql = $conn->query("INSERT INTO carrinhos (usuario_id, created) VALUES ('" . $_SESSION['id_usuario'] . "', NOW())");
        $id_carrinho = $conn->query("SELECT MAX(id) AS id FROM carrinhos WHERE usuario_id = '$user'");
        $ln = mysqli_fetch_assoc($id_carrinho);
        $id = $ln['id'];

        foreach($_SESSION['carrinho'] as $key => $value){
            $sql = $conn->query("INSERT INTO carrinhos_produtos (valor_cotacao, valor_venda, qnt_produto, produto_id, carrinho_id, created) VALUES ('" . $value['preco'] ."', '" . $value['preco'] . "', '" . $value['quantidade'] . "', '$key', '$id', NOW())");
        }


        if($sql){
            echo "<script>
                window.location = 'compra/index.php?carrinho=$id';
            </script>";
        }else{
            echo "<script>
                alert('Problemas técnicos!! Tente novamente mais tarde');
                window.location = 'carrinho.php';
            </script>";
        }
    }else{
        echo "<script>
            alert('Você precisa estar logado para finalizar a compra');
            window.location = 'login.php';
        </script>";
    }