<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@	taglib uri="http://www.springframework.org/tags/form" prefix="form"	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Adcionar tarefa</h3>
	<form:errors path="tarefa.descricao" cssStyle="color:red"/>
	<form action="adicionaTarefa" method="post">
		Descri��o: <br/>
		<textarea name="descricao" rows="5" cols="100"></textarea> <br/>
		<input type="submit" value="Adicionar">
	</form>
	<br/>
	<a href="voltarMenu">Voltar</a>
</body>
</html>