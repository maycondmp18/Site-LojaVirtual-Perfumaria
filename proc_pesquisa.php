<?php

    require 'conexao.php';

    $produto = filter_input(INPUT_POST, 'palavra', FILTER_SANITIZE_STRING);

    $sql = "SELECT * FROM produtos WHERE titulo LIKE '%$produto%'";
    $resultado = mysqli_query($conn, $sql);
    
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
                                <a href="produto-detalhe.php?id=<?php echo $ln['id'] ?>"><img src="storage/images/<?php echo $ln['imagem'] ?>" alt="" id=""></a>
                                
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
    }else{
        echo "Nenhum produto encontrado";
    }