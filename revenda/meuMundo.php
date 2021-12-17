<?php
    require '../conexao.php';

    // Sessão
session_start();

// Verificação
if(!isset($_SESSION['logado'])):
	header('Location: login.php');
endif;

// Dados
$id = $_SESSION['id_usuario'];
$sql = "SELECT * FROM revendedors WHERE id = '$id'";
$resultado = mysqli_query($conn, $sql);
$dados = mysqli_fetch_array($resultado);
mysqli_close($conn);
?>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Essenza</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.ico">

	<!-- CSS here -->
	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="../assets/css/slicknav.css">
    <link rel="stylesheet" href="../assets/css/flaticon.css">
    <link rel="stylesheet" href="../assets/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="../assets/css/gijgo.css">
    <link rel="stylesheet" href="../assets/css/animate.min.css">
    <link rel="stylesheet" href="../assets/css/animated-headline.css">
	<link rel="stylesheet" href="../assets/css/magnific-popup.css">
	<link rel="stylesheet" href="../assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="../assets/css/themify-icons.css">
	<link rel="stylesheet" href="../assets/css/slick.css">
	<link rel="stylesheet" href="../assets/css/nice-select.css">
	<link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>
    <!-- ? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="../assets/img/logo/loder.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->
    <header>
        <!-- Header Start -->
        <div class="header-area header-transparent">
            <div class="main-header header-sticky">
                <div class="container-fluid">
                    <div class="menu-wrapper d-flex align-items-center justify-content-between">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="../index.html"><img src="../assets/img/logo/logo.png" alt=""></a>
                        </div>
                        <!-- Main-menu -->
                        <div class="main-menu f-right d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a href="../produtos.html">Produtos Essenza</a></li>
                                    <li><a href="main.html">Meu Perfil</a></li>
                                </ul>
                            </nav>
                        </div>          
                        <!-- Header-btn -->
                        <div class="header-btns d-none d-lg-block f-right">
                            <a href="main.html" class="mr-40"><i class="ti-star"></i>0 PONTOS</a>
                            <a href="main.php" class="mr-40"><i class="ti-user"></i> <?php echo $dados['nome']; ?></a>
                            <a href="logout.php" class="mr-40" style="color: rgb(222, 238, 0);"></i> Sair</a>
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
        <div class="slider-area hero-bg1 hero-overly">
            <div class="single-slider hero-overly  slider-height1 d-flex align-items-center">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-10 col-lg-10">
                            <!-- Hero Caption -->
                            <div class="hero__caption pt-100">
                                <h1>MEU MUNDO ESSENZA</h1>
                                <p style="font-size: 20px;">Fragâncias que marcam o tempo</p>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Hero Area End-->

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
                                <h4>PONTOS</h4>
                            </div>
                            <label class="container">30 - 200
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">200 - 600
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">600 - 1000
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">1.000 - 1.500
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">1.500 - 2.000
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">2.000 - 2.500
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">2.500 - 3.000
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">3.000 - 7.000
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">7.000 - 20.000
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">20.000 - 40.000
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                        <!-- select-Categories End -->
                        <!-- select-Categories start -->
                        <div class="select-Categories">
                            <div class="small-section-tittle2 mb-20">
                                <h4>Tags</h4>
                            </div>
                            <label class="container">Bronze
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">Prata
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">Ouro
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
                <div class="row">
                    <div class="col-lg-12">
                        <div class="count mb-35">
                            <span></span>
                        </div>
                    </div>
                </div>
                <!--? Popular Directory Start -->
                <div class="popular-directorya-area fix">
                        <div class="row">
                            <div class="col-lg-6">
                                <!-- Single -->
                                <div class="properties properties2 mb-30">
                                    <div class="properties__card">
                                        <div class="properties__img overlay1">
                                            <a href="#"><img src="../assets/img/gallery/properties2.png" alt=""></a>
                                            <div class="img-text">
                                                <span>Tag</span>
                                            </div>
                                        </div>
                                        <div class="properties__caption">
                                            <h3><a href="#">Produto</a></h3>
                                            <p>Pontos necessários para resgate</p>
                                        </div>
                                        <div class="properties__footer d-flex justify-content-between align-items-center">
                                            <a href="#" class="btn">Resgatar Produto</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <!-- Single -->
                                <div class="properties properties2 mb-30">
                                    <div class="properties__card">
                                        <div class="properties__img overlay1">
                                            <a href="#"><img src="../assets/img/gallery/properties2.png" alt=""></a>
                                            <div class="img-text">
                                                <span>Tag</span>
                                            </div>
                                        </div>
                                        <div class="properties__caption">
                                            <h3><a href="#">Produto</a></h3>
                                            <p>Pontos necessários para resgate</p>
                                        </div>
                                        <div class="properties__footer d-flex justify-content-between align-items-center">
                                            <a href="#" class="btn">Resgatar Produto</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <!-- Single -->
                                <div class="properties properties2 mb-30">
                                    <div class="properties__card">
                                        <div class="properties__img overlay1">
                                            <a href="#"><img src="../assets/img/gallery/properties3.png" alt=""></a>
                                            <div class="img-text">
                                                <span>Tag</span>
                                            </div>
                                        </div>
                                        <div class="properties__caption">
                                            <h3><a href="#">Produto</a></h3>
                                            <p>Pontos necessários para resgate</p>
                                        </div>
                                        <div class="properties__footer d-flex justify-content-between align-items-center">
                                            <a href="#" class="btn">Resgatar Produto</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <!-- Single -->
                                <div class="properties properties2 mb-30">
                                    <div class="properties__card">
                                        <div class="properties__img overlay1">
                                            <a href="#"><img src="../assets/img/gallery/properties3.png" alt=""></a>
                                            <div class="img-text">
                                                <span>Tag</span>
                                            </div>
                                        </div>
                                        <div class="properties__caption">
                                            <h3><a href="#">Produto</a></h3>
                                            <p>Pontos necessários para resgate</p>
                                        </div>
                                        <div class="properties__footer d-flex justify-content-between align-items-center">
                                            <a href="#" class="btn">Resgatar Produto</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
                <!--? Popular Directory End -->
                <!--Pagination Start  -->
                <div class="pagination-area text-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="single-wrap d-flex justify-content-center">
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination justify-content-start " id="myDIV">
                                            <li class="page-item"><a class="page-link" href="#"><span class="ti-angle-left"></span></a></li>
                                            <li class="page-item active"><a class="page-link" href="#">01</a></li>
                                            <li class="page-item"><a class="page-link" href="#">02</a></li>
                                            <li class="page-item"><a class="page-link" href="#">03</a></li>
                                            <li class="page-item"><a class="page-link" href="#"><span class="ti-angle-right"></span></a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Pagination End  -->
            </div>
        </div>
    </div>
        
        
        <!--? Want To work 02-->
        <section class="wantToWork-area">
            <div class="container">
                <div class="wants-wrapper w-padding2">
                    <div class="row justify-content-between">
                        <div class="col-xl-8 col-lg-8 col-md-7">
                            <div class="wantToWork-caption wantToWork-caption2">
                                <img src="../assets/img/logo/logo2_footer.png" alt="" class="mb-20">
                                <p>Fragâncias que marcam o tempo</p>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-5">
                            <div class="footer-social f-right sm-left">
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
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

    <script src="../assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="../assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="../assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="../assets/js/owl.carousel.min.js"></script>
    <script src="../assets/js/slick.min.js"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="../assets/js/wow.min.js"></script>
    <script src="../assets/js/animated.headline.js"></script>
    <script src="../assets/js/jquery.magnific-popup.js"></script>

    <!-- Date Picker -->
    <script src="../assets/js/gijgo.min.js"></script>
    <!-- Nice-select, sticky -->
    <script src="../assets/js/jquery.nice-select.min.js"></script>
    <script src="../assets/js/jquery.sticky.js"></script>
    <!-- Progress -->
    <script src="../assets/js/jquery.barfiller.js"></script>
    
    <!-- counter , waypoint,Hover Direction -->
    <script src="../assets/js/jquery.counterup.min.js"></script>
    <script src="../assets/js/waypoints.min.js"></script>
    <script src="../assets/js/jquery.countdown.min.js"></script>
    <script src="../assets/js/hover-direction-snake.min.js"></script>

    <!-- contact js -->
    <script src="../assets/js/contact.js"></script>
    <script src="../assets/js/jquery.form.js"></script>
    <script src="../assets/js/jquery.validate.min.js"></script>
    <script src="../assets/js/mail-script.js"></script>
    <script src="../assets/js/jquery.ajaxchimp.min.js"></script>
    
    <!-- Jquery Plugins, main Jquery -->	
    <script src="../assets/js/plugins.js"></script>
    <script src="../assets/js/main.js"></script>


    
    </body>
</html>