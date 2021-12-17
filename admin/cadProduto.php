<?php
    require 'conexao.php';

    $titulo = $_POST['titulo'];
    $descricao = $_POST['descricao'];
    $marca = $_POST['marca'];
    $sexo = $_POST['sexo'];
    $fragancia = $_POST['fragancia'];
    $contraind = $_POST['contraind'];
    $peso = $_POST['peso'];
    $conteudo = $_POST['conteudo'];
    $imagem = $_POST['imagem'];
    $valor = $_POST['valor'];

    $sql = $conn->query("INSERT INTO produtos (titulo, descricao, marca, sexo, fragancia, contraind, peso, conteudo, imagem, valor) VALUES ('$titulo', '$descricao', '$marca', '$sexo', '$fragancia', '$contraind', '$peso', '$conteudo', '$imagem', '$valor')");
    if($sql){
        echo "<script>
            alert('Cadastrado com sucesso');
            window.location='produtos.php';
        </script>";
    }else{
        echo "<script>
            alert('ERRO ao tentar cadastrar');
            window.location='produtos.php';
        </script>";
    }