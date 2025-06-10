<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Sistema de cadastro de produtos com Java e Bootstrap.">
<meta name="keywords"
	content="cadastro, produtos, sistema, Java, Bootstrap">
<title>Cadastro de Produtos</title>
<link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">

</head>
<body>

	<main class="container my-5">
		<section class="row justify-content-center">
			<div class="col-md-6">
				<div class="bg-light p-4 rounded shadow-sm">
					<h1 class="h4 text-center mb-4 text-info">Editar Produto</h1>

					<form id="form_produto" name="frmProduto" action="update">

						<div class="form-group">
							<label>ID</label> <input type="text" class="form-control"
								name="id" readonly
								value="<%out.print(request.getAttribute("id"));%>">
						</div>

						<div class="form-group">
							<label for="nomeproduto">Nome do Produto</label> <input
								type="text" class="form-control" name="nome_produto"
								id="nomeproduto" placeholder="Digite o nome do produto" required
								aria-required="true"
								value="<%out.print(request.getAttribute("nome"));%>">
						</div>

						<div class="form-group">
							<label for="qtde">Quantidade</label> <input type="number"
								class="form-control" name="qtde" id="qtde" min="1"
								placeholder="Digite a quantidade" required aria-required="true"
								value="<%out.print(request.getAttribute("qtde"));%>">
						</div>

						<div class="form-group">
							<label for="valor_unit">Valor Unitário</label> <input type="text"
								class="form-control" name="valorunit" id="valor_unit"
								placeholder="Ex: 12,99" required pattern="^\d+(,\d{1,2})?$"
								title="Digite o valor com vírgula, exemplo: 12,99"
								aria-required="true"
								value="<%out.print(request.getAttribute("valorunit"));%>">
						</div>

						<div class="form-group">
							<label for="data">Data de Cadastro</label> <input type="date"
								class="form-control" name="data_cad" id="data" required
								aria-required="true"
								value="<%out.print(request.getAttribute("data_cadastro"));%>">
						</div>

						<button type="submit" class="btn btn-info btn-block">Salvar</button>
					</form>

				</div>
			</div>
		</section>
	</main>

	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
