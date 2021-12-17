<?php
// Conexão
require_once 'conexao.php';

// Sessão
session_start();

// Botão enviar
if(isset($_POST['btn-entrar'])):
	$erros = array();
	$email = mysqli_escape_string($conn, $_POST['email']);
	$senha = mysqli_escape_string($conn, $_POST['senha']);

	if(isset($_POST['lembrar-senha'])):

		setcookie('email', $email, time()+3600);
		setcookie('senha', md5($senha), time()+3600);
	endif;

	if(empty($email) or empty($senha)):
		$erros[] = "<li> O campo login/senha precisa ser preenchido </li>";
	else:
		// 105 OR 1=1 
	    // 1; DROP TABLE teste

		$sql = "SELECT email FROM clientes WHERE email = '$email'";
		$resultado = mysqli_query($conn, $sql);		

		if(mysqli_num_rows($resultado) > 0):
		$senha = md5($senha);       
		$sql = "SELECT * FROM clientes WHERE email = '$email' AND senha = '$senha'";



		$resultado = mysqli_query($conn, $sql);

			if(mysqli_num_rows($resultado) == 1):
				$dados = mysqli_fetch_array($resultado);
				mysqli_close($conn);
				$_SESSION['logado'] = true;
				$_SESSION['id_usuario'] = $dados['id'];
				header('Location: cliente/main.php');
			else:
				$erros[] = "<li> Usuário e senha não conferem </li>";
			endif;

		else:
			$erros[] = "<li> Usuário inexistente </li>";
		endif;

	endif;

endif;
?>
<!doctype html>
<html lang="pt-br">
  <head>
  	<title>Sigmults | Ordem de Serviço</title>
	  <link rel="shortcut icon" href="assets/images/gt_favicon.png">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="login/css/style.css">

	</head>
	<body class="img js-fullheight" style="background-image: url(login/images/bg.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
				<div class="login-wrap p-0">
				<div class="form-group">
	            	<a href=""><button type="submit" name="btn-entrar" class="form-control btn btn-warning submit px-3">PÁGINA INICIAL</button></a>
	        	</div>
		      	<h3 class="mb-4 text-center">Tem uma conta?</h3>

		      	<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" class="signin-form">
		      		<div class="form-group">
		      			<input type="text" class="form-control" placeholder="Email" name="email" value="<?php echo isset($_COOKIE['email']) ? $_COOKIE['email'] : '' ?>" required>
		      		</div>
	            <div class="form-group">
	              <input type="password" class="form-control" placeholder="Senha" name="senha" value="<?php echo isset($_COOKIE['senha']) ? $_COOKIE['senha'] : '' ?>" required>
	              <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	            </div>
	            <div class="form-group">
	            	<button type="submit" name="btn-entrar" class="form-control btn btn-primary submit px-3">Entrar</button>
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
		            	<label class="checkbox-wrap checkbox-primary">Lembre-se de Mim
							<input type="checkbox" checked>
							<span class="checkmark"></span>
						</label>
					</div>
					<div class="w-50 text-md-right">
						<a href="#" style="color: #fff">Esquecia se senha</a>
					</div>
	            </div>
	          </form>

	          <p class="w-100 text-center">&mdash; Não possui uma conta ainda? &mdash;</p>
			  	<div class="form-group">
					<a href="registro.php"><button class="form-control btn btn-primary submit px-3" data-bs-toggle="modal" data-bs-target="#exampleModal">Registrar-se</button></a>
				</div><br><br>
				
		      </div>
				</div>
			</div>
			
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>

