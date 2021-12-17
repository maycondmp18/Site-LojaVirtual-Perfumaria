<?php

    require 'conexao.php';

    $pagina = filter_input(INPUT_POST, 'pagina', FILTER_SANITIZE_NUMBER_INT);
    $qtd_pg = filter_input(INPUT_POST, 'qtd_pg', FILTER_SANITIZE_NUMBER_INT);

    //CAULCULA O INICIO DA VISUALIZAÇÃO
    $inicio = ($pagina * $qtd_pg) - $qtd_pg;

    //CONSULTAR DADOS
    $sql = "SELECT * FROM produtos ORDER BY id DESC LIMIT $inicio, $qtd_pg";
    $resultado = mysqli_query($conn, $sql);
    

    //VERIFICAR SE ENCONTROU RESULTADO NA TABELA "PRODUTOS"
    if(($resultado) AND ($resultado->num_rows != 0)){

?>

        <div class="popular-directorya-area fix">
            <div class="row">
                <?php
                    while($ln = mysqli_fetch_assoc($resultado)){
                ?>
                <div class="col-lg-6">
                    <!-- Single -->
                    <div class="properties properties2 mb-30">
                        <div class="properties__card">
                            <div class="properties__img overlay1">
                                <a href="produto-detalhe.php?id=<?php echo $ln['id'] ?>"><img src="storage/images/<?php echo $ln['imagem']; ?>" alt="" id=""></a>
                                
                                <div class="icon">
                                    <img src="assets/img/gallery/categori_icon1.png" alt=""> 
                                </div>
                            </div>
                            <div class="properties__caption">
                                <h3><a href="produto-detalhe.php?id=<?php echo $ln['id'] ?>"><?php echo $ln['titulo'] ?></a></h3>
                                <span><b> R$ <?php echo $ln['valor'] ?>,00</b></span>
                            </div>
                        </div>
                    </div>
                </div>
                <?php
                    }
                ?>
            </div>
        </div>

<?php
        //PAGINAÇÃO - SOMAR A QUANTIDADE DE USUÁRIOS
        $result_pg = "SELECT count(id) AS num_result FROM produtos";
        $resultado_pg = mysqli_query($conn, $result_pg);
        $row_pg = mysqli_fetch_assoc($resultado_pg);

        //QUANTIDADE DE PÁGINAS
        $quantidade_pg = ceil($row_pg['num_result'] / $qtd_pg);

        //LIMITAR OS LINKS ANTES E DEPOIS
        $max_links = 2;
?>

                <div class="pagination-area text-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="single-wrap d-flex justify-content-center">
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination justify-content-start " id="myDIV">
                                            
                                            <!-- <li class="page-item"><a class="page-link" onclick='listagem_produtos(1, $qtd_pg)' href="#"><span class="ti-angle-left"></span></a></li> -->
                                            
                                            <?php
                                                for ($pag_ant = $pagina - $max_links; $pag_ant <= $pagina - 1; $pag_ant++) { 
                                                    if($pag_ant >= 1){
                                                        echo "<li class='page-item'><a class='page-link' href='#' onclick='listagem_produtos($pag_ant, $qtd_pg)'> $pag_ant </a></li>";
                                                    } 
                                                }
                                            ?>
                                             
                                            <li class="page-item active"><a class="page-link" href="#"><?php echo $pagina ?></a></li>

                                            <?php
                                                for ($pag_dep = $pagina + 1; $pag_dep <= $pagina + $max_links; $pag_dep++) { 
                                                    if($pag_dep <= $quantidade_pg){
                                                        echo "<li class='page-item'><a class='page-link' href='#' onclick='listagem_produtos($pag_dep, $qtd_pg)'> $pag_dep </a></li>";
                                                    } 
                                                }
                                            ?>
                                            
                                            <!-- <li class="page-item"><a class="page-link" onclick='listagem_produtos($quantidade_pg, $qtd_pg)' href="#"><span class="ti-angle-right"></span></a></li> -->
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

<?php
    }
?>