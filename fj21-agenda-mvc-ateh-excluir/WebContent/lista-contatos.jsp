<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>				
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de contatos</title>
</head>
<body>

	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />
	
	<table>
	<tr>
		<th>Id</th>
		<th>Nome</th>
		<th>Email</th>
		<th>Endereço</th>
		<th>Data de nascimento</th>
	</tr>
	<c:forEach var="contato" items="${dao.lista}">
		<tr>
			<td>${contato.id}</td>
			<td>${contato.nome}</td>
			
			<c:if test="${empty contato.email}">
				<td>Email nao informado</td>
			</c:if>
			<c:if test="${not empty contato.email}">
				<td>
					<a href="mailto:${contato.email}">${contato.email}</a>
				</td>
			</c:if>
			
			<td>${contato.endereco}</td>
			<td>
				<fmt:formatDate pattern="dd/MM/yyyy" 
					value="${contato.dataNascimento.time}" />
			</td>
			<td>
				<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
			</td>
		</tr>
	
	</c:forEach>
	</table>
	
	<c:import url="rodape.jsp" />
</body>
</html>







