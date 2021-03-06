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
$sql = "SELECT * FROM clientes WHERE id = '$id'";
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
	<link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.ico">

 	<!-- CSS here -->
	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="../assets/css/slicknav.css">
	<link rel="stylesheet" href="../assets/css/animate.min.css">
	<link rel="stylesheet" href="../assets/css/hamburgers.min.css">
	<link rel="stylesheet" href="../assets/css/magnific-popup.css">
	<link rel="stylesheet" href="../assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="../assets/css/themify-icons.css">
	<link rel="stylesheet" href="../assets/css/slick.css">
	<link rel="stylesheet" href="../assets/css/nice-select.css">
	<link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>
    <!--? Preloader Start -->
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
                            <a href="../index.php"><img src="../assets/img/logo/logo.png" alt=""></a>
                        </div>
                        <!-- Main-menu -->
                        <div class="main-menu f-right d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a href="../index.php">Página Inicial</a></li>
                                    <li><a href="main.php">Meu Perfil</a></li>
                                </ul>
                            </nav>
                        </div>          
                        <!-- Header-btn -->
                        <div class="header-btns d-none d-lg-block f-right">
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
        <!--? Hero Start -->
        <div class="slider-area2">
            <div class="slider-height3  hero-overly hero-bg4 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap2 pt-20 text-center">
                                <h2>Essenza</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><br>
		<div class="container">
        <form>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4"><b> Nome Completo:</b> <?php echo $dados['nome']; ?> <span style="color: blue;">Alterar</span></label>
                      </div>
                      <div class="form-group col-md-6">
                        <label for="inputPassword4"><b> CPF:</b> <?php echo $dados['cpf']; ?> <span style="color: blue;">Alterar</span></label>
                      </div>
                  <div class="form-group col-md-6">
                    <label for="inputEmail4"><b> Email:</b> <?php echo $dados['email']; ?> <span style="color: blue;">Alterar</span></label>
                  </div>
                  <div class="form-group col-md-6">
                    <label for="inputPassword4"><b> Telefone:</b> <?php echo $dados['telefone']; ?> <span style="color: blue;">Alterar</span></label>
                  </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                      <label for="inputCity"><b> Endereço:</b> <?php echo $dados['endereco']; ?> <span style="color: blue;">Alterar</span></label>
                    </div>
                    <div class="form-group col-md-6">
                      <label for="inputCity"><b> Ponto de Referência:</b> <?php echo $dados['preferencia']; ?> <span style="color: blue;">Alterar</span></label>
                    </div>
                </div>
                <div class="form-row">
                  <div class="form-group col-md-6">
                    <label for="inputCity"><b> Cidade:</b> <?php echo $dados['cidade']; ?> <span style="color: blue;">Alterar</span></label>
                  </div>
                  <div class="form-group col-md-6">
                    <label for="inputCity"><b> Estado:</b> <?php echo $dados['estado']; ?> <span style="color: blue;">Alterar</span></label>
                  </div>
                </div>
              </form>
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