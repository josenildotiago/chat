<!DOCTYPE html>
<html>

<head>
	<title>Chat - Cadastrar</title>
	<meta name="viewport" content="width=device-width,initial-scale=1" />
	<link rel="stylesheet" type="text/css" href="<?php echo BASE_URL; ?>assets/css/login.css" />
	<script type="text/javascript" src="<?php echo BASE_URL; ?>assets/js/jquery.mask.js"></script>
</head>

<body>
	<div class="container">
		<h2>Cadastro</h2>

		<?php if (!empty($msg)) : ?>
			<div class="warning">
				<?php echo $msg; ?>
			</div>
		<?php endif; ?>

		<form method="POST">
			Nome Usuário:<br />
			<input type="text" name="username" required /><br /><br />

			CPF:<br />
			<input type="text" name="cpf" id="cpf" required /><br /><br />

			E-mail:<br />
			<input type="email" name="email" id="email" required /><br /><br />

			Senha:<br />
			<input type="password" name="pass" required /><br /><br />

			<input type="submit" value="Cadastrar" />
		</form>
	</div>
	<script type="text/javascript" src="<?php echo BASE_URL; ?>assets/js/script.js"></script>
</body>

</html>