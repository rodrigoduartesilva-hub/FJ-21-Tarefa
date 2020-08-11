<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Página inicial da Lista	de Tarefas</h2>
	<p>Bem vindo, ${usuarioLogado.login}</p>
	<a href="listaTarefas">Clique aqui</a> para acessar a lista de tarefas <br/>
	<a href = "novaTarefa"> Clique aqui</a> para criar uma nova tarefa
	<br/><br/>
	<a href="logout">Logout</a>
</body>
</html>