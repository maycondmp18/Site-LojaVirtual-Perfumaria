<?php
    session_start();
    include 'conexao.php';

    $id = $_GET['id'];
?>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Essenza Revendedor(a)</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

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
                            <a href="index.php"><img src="assets/img/logo/logo.png" alt=""></a>
                        </div>
                        <!-- Main-menu -->
                        <div class="main-menu f-right d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a href="index.php">Inicio</a></li>
                                    <li><a href="produtos.php">Produtos</a></li> 
                                    <li><a href="#">Revendedor(a)</a>
                                        <ul class="submenu">
                                            <li><a href="revendedor.php">Seja Revendedor(a)</a></li>
                                            <li><a href="revenda/login.php">Acessar Conta</a></li> 
                                        </ul>
                                    </li>
                                    <li><a href="sobre.php">Sobre</a></li>
                                </ul>
                            </nav>
                        </div>         
                        <!-- Header-btn -->
                        <div class="header-btns d-none d-lg-block f-right">
                            <a href="#" class="mr-40"><i class="ti-user"></i> Login</a>
                            <a href="carrinho.php" class="btn" style="background-color:#ff7600;">Carrinho</a>
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
    <div class="slider-area hero-bg3 hero-overly">
        <div class="single-slider">
            <div class="container">
                <div class="directory-details-head">
                    <section class="wantToWork-area">
                        <div class="wants-wrapper w-padding3">
                            <div class="row align-items-center justify-content-between">
                                <div class="col-xl-8">
                                  <div class="details-cap d-flex">
                                    <div class="properties__caption">
                                        <h3><a href="#"></a></h3>
                                        <p>.</p>
                                    </div>
                                  </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
   <!-- Directory Details start -->
    <div class="card text-center">
        <?php
            $sql = $conn->query("SELECT * FROM produtos WHERE id = '$id'");
            foreach ($sql as $key => $value) {
        ?>
            <div class="card-body">
                <a href="produto-detalhe.php?id_produto=<?php echo $value['id'] ?>"><img src="storage/images/<?php echo $value['imagem'] ?>"  alt="" id="" style="height: 300px;"></a>

                <h3 class="mt-5"><?php echo $value['titulo'] ?></h3>
                
                <div class="produto">
                    <a class="btn addCart" id="<?php echo $value['id'] ?>" href="#">Adiconar ao carrinho</a>
                </div>

                <h3 class="mt-5">Informações do Produto</h3>
                <p><?php echo $value['descricao'] ?></p>
                <br>
                <a href=""><p style="color: #ff7600;"> Política de Devolução</p></a>
                <br><br>
                <h3>Ficha Técnica</h3>
                <div class="row">
                    <div class="col" style="background: #ff7600;"><b> Marca: <?php echo $value['marca'] ?></b> </div>
                    <div class="col" style="background: #ff7600;"><b> Sexo: <?php echo $value['sexo'] ?></b> </div>
                    <div class="w-100" style="background: #ff7600;"></div>
                    <div class="col"><b> Fragrância: <?php echo $value['fragancia'] ?></b> </div>
                    <div class="col"><b> Contra-indicação: <?php echo $value['contraind'] ?></b> </div>
                    <div class="w-100"></div>
                    <div class="col" style="background: #ff7600;"><b> Peso líq. aproximado do produto (ml): <?php echo $value['peso'] ?></b> </div>
                    <div class="col" style="background: #ff7600;"><b> Conteúdo da Embalagem: <?php echo $value['conteudo'] ?></b> </div>
                    <div class="w-100"></div>
                    <div class="col"><b> Fornecedor:</b> </div>
                    <div class="col"><b> Atendimento:</b> </div>
                </div>
            </div>
        <?php
            }
        ?>
    </div>
    <br><br>
   <!-- Directory Details End -->
    
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
        $(document).on("click", ".addCart", function() {
            var id = $(this).attr('id');
            $.post("carrinho.php", {id: id}, function() {
                window.location.replace('carrinho.php');
            })
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