<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"	%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"	%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script	type="text/javascript" src="resources/js/jquery.js"></script>
<link href="resources/css/style.css" rel="stylesheet">
</head>
<body>
	
	<script	type="text/javascript">
		function finalizaAgora(id) {
			$.post("finalizaTarefa", {'id' : id}, function() {
				$("#tarefa_"+id).html("Finalizado");
			});
		}
	</script>
	
	<table>
		<tr>
			<th>Id</th>
			<th>Descrição</th>
			<th>Finalizado?</th>
			<th>Data de Finalização</th>
		</tr>
		<c:forEach items="${tarefas}" var="tarefa">
			<tr>
				<td>${tarefa.id}</td>
				<td>${tarefa.descricao}</td>
				<!-- <c:set var="finalizado" value=${tarefa.finalizado eq false ? 'Não finalizado' : 'Finalizado'}/> -->	
				<c:if test="${tarefa.finalizado eq false}">
					<td	id="tarefa_${tarefa.id}">
						<a	href="#" onClick="finalizaAgora(${tarefa.id})">
							Finaliza agora!
						</a>
					</td>
				</c:if>
				<c:if test="${tarefa.finalizado eq true}">
					<td>Finalizado</td>
				</c:if>
				<td>
					<fmt:formatDate
						value="${tarefa.dataFinalizacao.time}"
						pattern="dd/MM/yyyy"/>
				</td>
				<td>
					<a href="removeTarefa?id=${tarefa.id}">Remover</a>
				</td>
				<td>
					<a href="mostraTarefa?id=${tarefa.id}">Alterar</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	<!-- Colunas personalizadas
	<display:table name="${tarefas}">
		<display:column property="id" />
		<display:column property="descricao" />
		<display:column property="finalizado" title="Finalizado ?" />
		<display:column property="dataFinalizacao.time" title="Data de finalização" format="{0,date,dd/MM/yyyy}"/>
	</display:table>
	  -->
	
	<br/>
		<a href="voltarMenu">Voltar</a>
</body>
</html>