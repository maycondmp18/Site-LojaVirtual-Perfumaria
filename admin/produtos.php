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
$sql = "SELECT * FROM administrador WHERE id = '$id'";
$resultado = mysqli_query($conn, $sql);
$dados = mysqli_fetch_array($resultado);
mysqli_close($conn);
?>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Essenza Revenda</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
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
                            <a href="../index.php"><img src="../assets/img/logo/logo.png" alt=""></a>
                        </div>
                        <!-- Main-menu -->
                        <div class="main-menu f-right d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a href="main.php">Meu Painel Adminstrativo</a></li>
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
        <!--? Hero Area Start-->
        <div class="slider-area hero-bg1 hero-overly">
            <div class="single-slider hero-overly  slider-height1 d-flex align-items-center">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-10 col-lg-10">
                            <!-- Hero Caption -->
                            <div class="hero__caption pt-100">
                                <h1>Produtos e Pedidos</h1>
                                <p></p>
                            </div>
                            
                            <!-- hero category1 img -->
                            <div class="category-img text-center">
                                <a href="#" data-toggle="modal" data-target="#exampleModal"> <img src="../assets/img/gallery/Cproduto.png" alt=""></a>
                                <a href="#" data-toggle="modal" data-target="#pponto"> <img src="../assets/img/gallery/EnvMundo.png" alt=""></a>
                                <a href="#" data-toggle="modal" data-target="#pfeitos"> <img src="../assets/img/gallery/Cpedido.png" alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Hero Area End-->
        
        <!-- Popular Locations End -->
  
  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel"><h4>CRIAR PRODUTO</h4></h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form action="cadProduto.php" method="post">
                <div class="form-group">
                  <label for="exampleInputEmail1"><b> Título do Produto</b></label>
                  <input type="text" name="titulo" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1"><b> Código do Produto</b></label>
                  <input type="number" name="codigo" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Descrição do Produto</b></label>
                    <input type="text" name="descricao" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Marca do Produto</b></label>
                    <input type="text" name="marca" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Sexo</b></label>
                    <input type="text" name="sexo" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Fragância</b></label>
                    <input type="text" name="fragancia" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Contra-indicação</b></label>
                    <input type="text" name="contraind" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Peso líq. aproximado do produto (ml)</b></label>
                    <input type="text" name="peso" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Conteúdo da Embalagem</b></label>
                    <input type="text" name="conteudo" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Valor do Produto</b></label>
                    <input type="number" name="valor" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Em Estoque</b></label>
                    <input type="number" name="estoque" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Pontos</b></label>
                    <input type="number" name="estoque" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlFile1"><b> Imagem/Foto do Produto (1509x792)</b></label>
                    <input type="file" name="imagem" class="form-control-file" id="">
                </div>
                <button type="submit" class="btn btn-primary">Enviar Produto</button>
            </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal -->
  <div class="modal fade" id="pponto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel"><h4>PRODUTO MUNDO ESSENZA</h4></h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form action="cadProdEssenza.php" method="post">
                <div class="form-group">
                  <label for="exampleInputEmail1"><b> Título do Produto</b></label>
                  <input type="text" name="titulo" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1"><b> Código do Produto</b></label>
                  <input type="number" name="codigo" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Descrição do Produto</b></label>
                    <input type="text" name="descricao" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Marca do Produto</b></label>
                    <input type="text" name="marca" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Sexo</b></label>
                    <input type="text" name="sexo" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Fragância</b></label>
                    <input type="text" name="fragancia" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Contra-indicação</b></label>
                    <input type="text" name="contraind" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Peso líq. aproximado do produto (ml)</b></label>
                    <input type="text" name="peso" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Conteúdo da Embalagem</b></label>
                    <input type="text" name="conteudo" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Pontos</b></label>
                    <input type="number" name="pontos" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><b> Em Estoque</b></label>
                    <input type="number" name="estoque" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>"number" name="estoque" class="form-control" id="" aria-describedby="emailHelp" placeholder="" style="font-size: 20px; height: 30%;">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlFile1"><b> Imagem/Foto do Produto (1509x792)</b></label>
                    <input type="file" name="imagem" class="form-control-file" id="">
                </div>
                <button type="submit" class="btn btn-primary">Enviar Produto</button>
            </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
        
    <div class="card text-center">
        <div class="card-body">
            <div class="row">
                <div class="col" style="background: #6785ff;"> <h3><b>PRODUTOS CADASTRADOS</b></h3> </div>
                <div class="col" style="background: #f067ff;">  <h3><b>PRODUTOS MUNDO ESSENZA</b></h3> </div>
                <div class="w-100" style="background: #ff7600;"></div>
                <div class="col">
                    <table class="table">
                        <thead>
                            <tr>
                            <th scope="col">#</th>
                            <th scope="col">Cod. Produto</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Valor</th>
                            <th scope="col">Estoque</th>
                            <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                            <th scope="row">1</th>
                            <td>1234567899</td>
                            <td>Essenza</td>
                            <td>R$ 215,00</td>
                            <td>30</td>
                            <td><button type="button" class="btn btn-success" style="padding: 10px">Visualizar</button></td>
                            </tr>
                        </tbody>
                    </table>
                    <nav aria-label="...">
                        <ul class="pagination">
                                <li class="page-item disabled">
                                    <a class="page-link" href="#" tabindex="-1">Voltar</a>
                                </li>
                                <li class="page-item active">
                                    <a class="page-link" href="#">1 <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#">Próximo</a>
                                </li>
                        </ul>
                    </nav>
                    <br><div class="col" style="background: #6785ff;">  <h3><b>PEDIDOS REVENDA ACEITOS</b></h3> </div>
                    <table class="table">
                        <thead>
                            <tr>
                            <th scope="col">#</th>
                            <th scope="col">Revendedor(a)</th>
                            <th scope="col">Valor Total</th>
                            <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                            <th scope="row">1</th>
                            <td>Jabiroca</td>
                            <td>R$ 600,00</td>
                            <td><button type="button" class="btn btn-success" style="padding: 10px">Visualizar</button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="col">
                    <table class="table">
                        <thead>
                            <tr>
                            <th scope="col">#</th>
                            <th scope="col">Cod. Produto</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Pontos</th>
                            <th scope="col">Estoque</th>
                            <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                            <th scope="row">1</th>
                            <td>1234567899</td>
                            <td>Essenza</td>
                            <td>900 Pontos</td>
                            <td>30</td>
                            <td><button type="button" class="btn btn-success" style="padding: 10px">Visualizar</button></td>
                            </tr>
                        </tbody>
                    </table>
                    <nav aria-label="...">
                        <ul class="pagination">
                            <li class="page-item disabled">
                                <a class="page-link" href="#" tabindex="-1">Voltar</a>
                            </li>
                            <li class="page-item active">
                                <a class="page-link" href="#">1 <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#">Próximo</a>
                            </li>
                        </ul>
                    </nav>

                    <br><div class="col" style="background: #f067ff;">  <h3><b>PEDIDOS MUNDO ESSENZA ACEITOS</b></h3> </div>
                    <table class="table">
                        <thead>
                            <tr>
                            <th scope="col">#</th>
                            <th scope="col">Usuário</th>
                            <th scope="col">Qtd de Produtos</th>
                            <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                            <th scope="row">1</th>
                            <td>Jabiroca</td>
                            <td>2</td>
                            <td><button type="button" class="btn btn-success" style="padding: 10px">Visualizar</button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                </div>
                <div class="w-100"></div>
            </div>
        </div>
    </div><br><br><br>
            
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