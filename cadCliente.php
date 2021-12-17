<?php

    require 'conexao.php';

    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $senha = $_POST['senha'];
    $telefone = $_POST['telefone'];
    $endereco = $_POST['endereco'];
    $numero = $_POST['numero'];
    $bairro = $_POST['bairro'];
    $cidade = $_POST['cidade'];

    if($pdo){
        $sql = $conn->query("INSERT INTO clientes (nome, email, senha, telefone, endereco, numero, bairro, cidade) VALUES ('$nome', '$email', '$senha', '$telefone', '$endereco', '$numero'), '$bairro', '$cidade'))");
        echo "<script>
            alert('Cadastro realizado com sucesso');
            window.location='index.php';
        </script>";
    }else{
        echo "<script>
            alert('N達o foi possivel fazer conexao com o banco de dados');
            window.location='index.php';
        </script>";
    }