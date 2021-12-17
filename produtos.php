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
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

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
                                    <li><a href="#">Revendedora</a>
                                        <ul class="submenu">
                                            <li><a href="revendedor.php">Seja Revendedora</a></li>
                                            <li><a href="revenda/login.php">Acessar Conta</a></li> 
                                        </ul>
                                    </li>
                                    <li><a href="sobre.php">Sobre</a></li>
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
                                    <a href="login.php" class="mr-40"><i class="ti-user"></i> Login</a>
                            <?php
                                }
                            ?>
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
    <div class="slider-area hero-bg2 hero-overly">
        <div class="single-slider hero-overly  slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-10 col-lg-10">
                        <!-- Hero Caption -->
                        <div class="hero__caption hero__caption2 pt-200">
                            <h1>Fragâncias que marcam o tempo</h1>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    
   
  <!-- listing Area Start -->
  <div class="listing-area pt-120 pb-120">
    <div class="container">
        <div class="row">
            <!--? Left content -->
            <div class="col-xl-4 col-lg-4 col-md-6">
                <div class="row">
                    <div class="col-12">
                        <div class="small-section-tittle2 mb-45">
                            <h4>Filtro Avançado</h4>
                        </div>
                    </div>
                </div>
                <!-- Job Category Listing start -->
                <div class="category-listing mb-50">
                    <!-- single one -->
                    <div class="single-listing">
                        <!-- select-Categories start -->
                        <div class="select-Categories pt-80 pb-30">
                            
                            <div class="small-section-tittle2 mb-20">
                                <h4>Pesquisar</h4>
                            </div>
                            <form method="post" class="search-box mb-10" id="form-pesquisa">
                                <div class="input-form">
                                    <input type="text" name="pesquisa" id="pesquisa" placeholder="O que você procura?">
                                </div>	
                            </form>
                            
                            <div class="small-section-tittle2 mb-20">
                                <h4>Preço</h4>
                            </div>
                            <label class="container">R$24 - R$40
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">R$40 - R$80
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                        <!-- select-Categories End -->
                        <!-- select-Categories start -->
                        <div class="select-Categories">
                            <div class="small-section-tittle2 mb-20">
                                <h4>Categoria</h4>
                            </div>
                            <label class="container">Masculino
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">Feminino
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">Colônia
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                        <!-- select-Categories End -->
                    </div>
                </div>
                <!-- Job Category Listing End -->
            </div>
            <!--?  Right content -->
            
            
            <div class="col-xl-8 col-lg-8 col-md-6">
                <!--? Popular Directory Start -->
                <span id="conteudo"></span>
                
                <!--? Popular Directory End -->
                <!--Pagination Start  -->
               
                <!--Pagination End  -->
            </div>
        </div>
    </div>
</div>
<!-- listing-area Area End -->


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
Desenvolvido &copy;<script>document.write(new Date().getFullYear());</script> Todos os direitos reservados por <a href="https://www.instagram.com/systemtag/" target="_blank">Systemtag</a>
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
    <script type="text/javascript">
        var qtd_pg = 10; //QUANTIDADE DE PRODUTOS POR PÁGINA
        var pagina = 1; //PÁGINA INICIAL

        $(document).ready(function() {
            listagem_produtos(pagina, qtd_pg);
            
            $("#pesquisa").keyup(function (){
                var pesquisa = $(this).val();

                if(pesquisa != ''){
                    var dados = {
                        palavra: pesquisa
                    }
                    $.post('proc_pesquisa.php', dados, function(retorna){
                        $("#conteudo").html(retorna);
                    });
                }
            });
        });

        function listagem_produtos(pagina, qtd_pg) {
            var dados = {
                pagina: pagina,
                qtd_pg: qtd_pg
            }
            $.post('listagem_produtos.php', dados, function(retorna){
                //SUBSTITUI O VALOR NO SELETOR ID="CONTEUDO"
                $("#conteudo").html(retorna);
            });
        }
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