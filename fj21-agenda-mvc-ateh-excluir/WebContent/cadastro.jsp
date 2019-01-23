<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Novo contato</title>

	<link rel="stylesheet" href="css/jquery.css">

	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
</head>
<body>
	<h3>Novo contato</h3>
	
	<form action="cadastroContato" method="post">
		Nome: <input type="text" name="nome"><br>
		Endereço: <input type="text" name="endereco"><br>
		Email: <input type="text" name="email"><br>
		Data de nascimento: <caelum:campoData codigo="dataNascimento" />
		<button>Cadastrar</button>
	</form>
	
	<c:import url="rodape.jsp" />
</body>
</html>





