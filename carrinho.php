<?php
    session_start();
    include 'conexao.php';
?>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Essenza Produtos</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <style type="text/css">
        .qtd {
            height: 25px;
            width: 20px;
            color: #000;
            border: 1px solid rgba(0, 0, 0, .1);
            border-radius: 5px;
            text-align: center;
            font-weight: bold;
            cursor: pointer;
        }
        .qtd:hover {
            color: #000;
        }
        .mostra-qtd {
            padding: 4px;
            margin-right: 12px;
            margin-left: 12px;
        }
        .quantidade {
            display: inline-flex;
        }

        .valor {
            border: none;
            text-align: center;
            color: #000;
            background: #fff;
        }
    </style>

	<!-- CSS here -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="assets/css/gijgo.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/animated-headline.css">
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="assets/css/themify-icons.css">
	<link rel="stylesheet" href="assets/css/slick.css">
	<link rel="stylesheet" href="assets/css/nice-select.css">
	<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <header>
        <!-- Header Start -->
        <div class="header-area header-transparent">
            <div class="main-header header-sticky">
                <div class="container-fluid">
                    <div class="menu-wrapper d-flex align-items-center justify-content-between">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="index.html"><img src="assets/img/logo/logo.png" alt=""></a>
                        </div>
                        <!-- Main-menu -->
                        <div class="main-menu f-right d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a href="index.php">Inicio</a></li>
                                    <li><a href="produtos.php">Produtos</a></li> 
                                    <li><a href="#">Revendedora</a>
                                        <ul class="submenu">
                                            <li><a href="directory_details.html">Seja Revendedora</a></li>
                                            <li><a href="listing.html">Acessar Conta</a></li> 
                                        </ul>
                                    </li>
                                    <li><a href="listing.html">Sobre</a></li>
                                </ul>
                            </nav>
                        </div>         
                        <!-- Header-btn -->
                        <div class="header-btns d-none d-lg-block f-right">
                            <?php
                                if(isset($_SESSION['logado']) && $_SESSION['logado'] == true){
                            ?>

                                <a href="#" class="mr-40"><i class="ti-user"></i><?php echo $_SESSION['nome_usuario'] ?></a>
                            
                            <?php 
                                }else{
                            ?>
                                    <a href="#" class="mr-40"><i class="ti-user"></i> Login</a>
                            <?php
                                }
                            ?>
                            <a href="#" class="btn" style="background-color:#ff7600;">Carrinho</a>
                        </div>
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->
    </header>
    <main>
    <!--? Hero Area Start-->
    <div class="slider-area hero-bg2 hero-overly">
        <div class="single-slider hero-overly  slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-10 col-lg-10">
                        <!-- Hero Caption -->
                        <div class="hero__caption hero__caption2 pt-200">
                            <h1>Carrinho de Compras</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
  
   <div class="container shopping-cart justify-content-center text-center">
        <?php
            @$id = $_POST['id'];
            
            if(isset($_POST['id'])){
                // adiocionar produtos
                $idProduto = (int) $_POST['id'];
                $sql = $conn->query("SELECT * FROM produtos WHERE id = '" . $id . "'");
                $items = mysqli_fetch_assoc($sql);

                if(isset($items)){
                    
                    if(isset($_SESSION['carrinho'][$idProduto])){
                        $_SESSION['carrinho'][$idProduto]['quantidade']++;
                        $_SESSION['items'] = count($_SESSION['carrinho'][$idProduto]);
                    }else{
                        $_SESSION['carrinho'][$idProduto] = array('quantidade' => 1, 
                                                                    'nome' => $items['titulo'], 
                                                                    'preco' => $items['valor'],
                                                                    'imagem' => $items['imagem']);
                    
                                                                    $_SESSION['items'] = count($_SESSION['carrinho']);
                    }
    
                    echo "<script>alert('O item foi adicionado ao carrinho!');</script>";
                }else{
                    die("Você não pode adicionar um item que não existe!");
                }
            }elseif (isset($_GET['remove'])) {
                $idProduto = (int) $_GET['remove'];
    
                if(isset($_SESSION['carrinho'])){
                    if(isset($_SESSION['carrinho'][$idProduto])){
                        unset($_SESSION['carrinho'][$idProduto]);
                    }
                }
            }elseif(isset($_POST['qtdMais'])){
                $idProduto = (int) $_POST['qtdMais'];

                if(isset($_SESSION['carrinho'][$idProduto])){
                    $_SESSION['carrinho'][$idProduto]['quantidade']++;
                    $_SESSION['items'] = count($_SESSION['carrinho'][$idProduto]);
                }

            }elseif(isset($_POST['qtdMenos'])){
                $idProduto = (int) $_POST['qtdMenos'];

                if(isset($_SESSION['carrinho'][$idProduto])){
                    $_SESSION['carrinho'][$idProduto]['quantidade']--;
                    $_SESSION['items'] = count($_SESSION['carrinho'][$idProduto]);
                }
            }
        ?>

        <table class="table">
            <thead>
                <tr>   
                    <th></th>
                    <th>Produto</th>
                    <th>Quantidade</th>
                    <th>Valor</th>
                </tr>
            </thead>
            <?php
                if(isset($_SESSION['carrinho'])){
                    foreach (@$_SESSION['carrinho'] as $key => $value) {
            ?>
                    <tbody>
                        <tr>
                            <td>
                                <input type="hidden" id="<?php echo $key ?>">
                                <img src="<?php echo 'storage/images/properties2.png' ?>" alt="" style="width: 60px; height: 60px;"><br>
                            </td>
                            <td>
                                <h3><?php echo $value['nome'] ?></h3>
                            </td>

                            <td>
                                <div class="quantidade">
                                    <a id="<?php echo $key ?>" class="qtd qtdMenos">-</a>
                                    <h3 class="mostra-qtd"><?php echo $value['quantidade'] ?></h3>
                                    <a id="<?php echo $key ?>" class="qtd qtdMais">+</a>
                                </div> 
                                <br>
                                <a href="?remove=<?php echo $key ?>" style="color: #000;">Remover</a>
                            </td>
                                        
                            <td>
                                <h3>
                                    <input type="text" class="valor" value="<?php echo number_format($value['quantidade'] * $value['preco'], 2, ',', '.') ?>" disabled>
                                </h3>
                            </td>
                            <td>
                                
                            </td>
                        </tr>
                    </tbody>

            <?php
                    }
                }else{
                    echo "<tbody>
                        <tr>
                            <th colspan='4'>O CARRINHO ESTA VAZIO</tr>
                        </tr>
                    </tbody>";
                }
            ?>
            <tbody>
                
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        Total: 
                        <strong id="resultado">
                            <?php
                                if(isset($_SESSION['carrinho'])){
                                    $qtd = 0;
                                    $preco = 0;
                                    $valor = 0;
                                    $total = 0;
                                    $number = count($_SESSION['carrinho']);

                                    foreach ($_SESSION['carrinho'] as $key => $value) {
                     
                                        $qtd = $_SESSION['carrinho'][$key]['quantidade'];

                                        if($_SESSION['carrinho'][$key]['quantidade'] == 0){
                                            echo "<script>
                                                window.location.replace('carrinho.php?remove=" . $key . "');
                                            </script>";
                                        }

                                        $qtd = $_SESSION['carrinho'][$key]['quantidade'];
                                        $preco = $_SESSION['carrinho'][$key]['preco'];

                                        $valor = $qtd * $preco;
                                        $total = $total + $valor;
                                    }

                                    

                                    echo number_format($total, 2, ',', '.');
                                }
                            ?>
                        </strong>
                    </td>
                </tr>

                <!-- <script type="text/javascript">
                    soma = 0;
                        numeros = document.querySelectorAll('.valor')
                        .forEach((elemento) => {
                            soma += Number.parseFloat(elemento.value);
                        });
                        document.getElementById('resultado').innerHTML = soma.toFixed(2);
                </script> -->

                <tr>
                    <td colspan="2">
                        <a href="produtos.php" class="btn">Continuar comprando</a>
                    </td>
                    <td colspan="2">
                        <a href="#" class="btn finaliza">Finalizar compra</a>
                    </td>
                </tr>
            </tbody>
        </table>
   </div>

    <!--? Want To work 02-->
    <section class="wantToWork-area">
        <div class="container">
            <div class="wants-wrapper w-padding2">
                <div class="row justify-content-between">
                    <div class="col-xl-8 col-lg-8 col-md-7">
                        <div class="wantToWork-caption wantToWork-caption2">
                            <img src="assets/img/logo/logo2_footer.png" alt="" class="mb-20">
                            <p>Fragâncias que marcam o tempo</p>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-5">
                        <div class="footer-social f-right sm-left">
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Want To work End -->
    
</main>
<footer>
    <div class="footer-wrapper pt-30">
        <!-- footer-bottom -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="footer-border">
                    <div class="row d-flex justify-content-between align-items-center">
                        <div class="col-xl-10 col-lg-9 ">
                            <div class="footer-copy-right">
                                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Desenvolvido &copy;<script>document.write(new Date().getFullYear());</script> Todos os direitos reservados por <a href="#" target="_blank">Systemtag</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>

    <!-- Scroll Up -->
    <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>
    <!-- JS here -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $(document).on("click", ".qtdMais", function() {
                var id = $(this).attr('id');
                $.post("carrinho.php", {qtdMais: id}, function() {
                    window.location.replace('carrinho.php');
                })
            });

            $(document).on("click", ".qtdMenos", function() {
                var id = $(this).attr('id');
                $.post("carrinho.php", {qtdMenos: id}, function() {
                    window.location.replace('carrinho.php');
                })
            });

            $(document).on('click', '.finaliza', function() {
                window.location='processo.php';
            });
        });
    </script>

    <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="./assets/js/popper.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="./assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="./assets/js/owl.carousel.min.js"></script>
    <script src="./assets/js/slick.min.js"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="./assets/js/wow.min.js"></script>
    <script src="./assets/js/animated.headline.js"></script>
    <script src="./assets/js/jquery.magnific-popup.js"></script>

    <!-- Date Picker -->
    <script src="./assets/js/gijgo.min.js"></script>
    <!-- Nice-select, sticky -->
    <script src="./assets/js/jquery.nice-select.min.js"></script>
    <script src="./assets/js/jquery.sticky.js"></script>
    <!-- Progress -->
    <script src="./assets/js/jquery.barfiller.js"></script>
    
    <!-- counter , waypoint,Hover Direction -->
    <script src="./assets/js/jquery.counterup.min.js"></script>
    <script src="./assets/js/waypoints.min.js"></script>
    <script src="./assets/js/jquery.countdown.min.js"></script>
    <script src="./assets/js/hover-direction-snake.min.js"></script>

    <!-- contact js -->
    <script src="./assets/js/contact.js"></script>
    <script src="./assets/js/jquery.form.js"></script>
    <script src="./assets/js/jquery.validate.min.js"></script>
    <script src="./assets/js/mail-script.js"></script>
    <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
    
    <!-- Jquery Plugins, main Jquery -->	
    <script src="./assets/js/plugins.js"></script>
    <script src="./assets/js/main.js"></script>

    
    </body>
</html>