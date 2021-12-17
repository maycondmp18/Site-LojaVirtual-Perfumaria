<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Loja</title>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    
    <header class="cabecalho">
        <nav class="nav menu">
            <a href="" class="nav-link">Home</a>
            <a href="" class="nav-link">Home</a>
            <a href="" class="nav-link">Home</a>

            <button class="btn cart" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">
                <span class="badge bg-danger" id="notify"><?php if(isset($_SESSION['items'])){echo $_SESSION['items'];}else{echo "0";} ?></span>
            </button>
        </nav>
    </header>

    <div class="shopping-container">
            <?php
                $items = array(1 => ['nome' => 'Ijiranaide, Nagatoro-san Vol. 3', 'image' => 'item1.jpg', 'preco' => '19.90'],
                    2 => ['nome' => 'Fuuka Vol. 1', 'image' => 'item2.jfif', 'preco' => '16.00'],
                    3 => ['nome' => 'Horimiya Vol.3', 'image' => 'item3.jpg', 'preco' => '17.50']);
                foreach ($items as $key => $value) {
            ?>

                <div class="produto">
                    <img src="<?php echo 'assets/images/' . $value['image'] ?>" alt="">
                    <a href="?adicionar=<?php echo $key ?>">Adiconar ao carrinho</a>
                </div>

            <?php
                }
            ?>
    </div>

    <?php
        if(isset($_GET['adicionar'])){
            //adiocionar produtos
            $idProduto = (int) $_GET['adicionar'];
            if(isset($items[$idProduto])){
                
                if(isset($_SESSION['carrinho'][$idProduto])){
                    $_SESSION['carrinho'][$idProduto]['quantidade']++;
                    $_SESSION['items'] = count($_SESSION['carrinho'][$idProduto]);
                }else{
                    $_SESSION['carrinho'][$idProduto] = array('quantidade' => 1, 
                                                                'nome' => $items[$idProduto]['nome'], 
                                                                'preco' => $items[$idProduto]['preco'], 
                                                                'image' => $items[$idProduto]['image']);
                
                                                                $_SESSION['items'] = count($_SESSION['carrinho']);
                }

                echo "<script>alert('O item foi adicionado ao carrinho!');</script>";
            }else{
                die("Você não pode adicionar um item que não existe!");
            }
        }elseif (isset($_GET['remove'])) {
            $idProduto = (int) $_GET['remove'];

            if(isset($items[$idProduto])){
                if(isset($_SESSION['carrinho'][$idProduto])){
                    unset($_SESSION['carrinho'][$idProduto]);
                }
            }
        }
    ?>
    
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Carrinho</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="item">
                    <table class="table">
                        <?php
                            if(isset($_SESSION['carrinho'])){
                                foreach (@$_SESSION['carrinho'] as $key => $value) {
                        ?>
                        <tbody>
                            <tr>
                                <td>
                                    <img src="<?php echo 'assets/images/' . $value['image'] ?>" alt="" style="width: 60px; height: 90px;">
                                    <a href="?remove=<?php echo $key ?>">Remover</a>
                                </td>

                                <td>
                                    <h5><?php echo $value['nome'] ?></h5>
                                </td>

                                <td>
                                    <div class="quantidade">
                                        <button id="">-</button>
                                        <input name="qtd" value="<?php echo $value['quantidade'] ?>" disabled>
                                        <button>+</button>
                                    </div>
                                </td>
                                        
                                <td>
                                    <h5><?php echo number_format($value['quantidade'] * $value['preco'], 2, ',', '.') ?></h5>
                                </td>
                            </tr>
                                </tbody>

                        <?php
                                }
                            }else{
                                echo "o Carrinho esta vazio!";
                            }
                        ?>
                    </table>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
            </div>
        </div>
    </div>

    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery.min.js"></script>
</body>
</html>