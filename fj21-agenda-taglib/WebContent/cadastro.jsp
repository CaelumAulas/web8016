<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Novo contato</title>
</head>
<body>
	<h3>Novo contato</h3>
	
	<form action="cadastroContato" method="post">
		Nome: <input type="text" name="nome"><br>
		Endereço: <input type="text" name="endereco"><br>
		Email: <input type="text" name="email"><br>
		Data de nascimento: <input type="text" name="dataNascimento"><br>
		
		<button>Cadastrar</button>
	</form>
	
	<c:import url="rodape.jsp" />
</body>
</html>





