<?php
                                $query = "SELECT * FROM produtos WHERE id = '$id'";
                                $sql = mysqli_query($conn, $query);
                                while($ln = mysqli_fetch_assoc($sql)){
                            ?>
        <div class="card-body">
            <a href="produto-detalhe.php?id_produto=<?php echo $ln['id_produto'] ?>"><img src="storage/images/properties2.png"  alt="" id="" style="height: 300px;"></a>
            <br><br>
            <h3><?php echo $ln['titulo'] ?></h3>
            <br><br>
            <?php
                foreach ($ln as $key => $value) {
            ?>

                <div class="produto">
                    <a class="btn" href="<?php echo $ln ?>">Adiconar ao carrinho</a>
                </div>

            <?php
                }
            ?>

            <br><br><br>
            <h3>Informações do Produto</h3>
            <p><?php echo $ln['descricao'] ?></p>
            <br>
            <a href=""><p style="color: #ff7600;"> Política de Devolução</p></a>
            <br><br>
            <h3>Ficha Técnica</h3>
            <div class="row">
                <div class="col" style="background: #ff7600;"><b> Marca:</b> </div>
                <div class="col" style="background: #ff7600;"><b> Sexo:</b> </div>
                <div class="w-100" style="background: #ff7600;"></div>
                <div class="col"><b> Fragrância:</b> </div>
                <div class="col"><b> Contra-indicação:</b> </div>
                <div class="w-100"></div>
                <div class="col" style="background: #ff7600;"><b> Peso líq. aproximado do produto (ml):</b> </div>
                <div class="col" style="background: #ff7600;"><b> Conteúdo da Embalagem:</b> </div>
                <div class="w-100"></div>
                <div class="col"><b> Fornecedor:</b> </div>
                <div class="col"><b> Atendimento:</b> </div>
            </div>
        </div><br><br>
        <?php
                            }
                            ?>