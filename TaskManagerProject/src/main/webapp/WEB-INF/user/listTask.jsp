<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="tn.iit.task.entites.Task"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Task</title>
</head>
<body>
	<%
		List<Task> tasks = (List<Task>) session.getAttribute("TaskArray");
	%>
<a href="show" class="btn btn-primary" >ajouter</a>
	<table>
		<thead>
			<tr>
				<td>name task</td>
				<td>progresse</td>
				<td>comments</td>
				<td>description</td>
				<td>date Debut</td>
				<td>date Fin</td>
				<td>priority</td>
				<td>due Date</td>
				<td></td>
			</tr>
		</thead>

		<c:forEach items="${TaskArray}" var="item">
			<tr>
				<td><c:out value="${item.nametask}"></c:out></td>
				<td><c:out value="${item.progress}"></c:out></td>
				<td><c:out value="${item.comments}"></c:out></td>
				<td><c:out value="${item.description}"></c:out></td>
				<td><c:out value="${item.dateDebut}"></c:out></td>
				<td><c:out value="${item.dateFin}"></c:out></td>
				<td><c:out value="${item.priority}"></c:out></td>
				<td><c:out value="${item.dueDate}"></c:out></td>
				<td><c:out value="${item.state}"></c:out></td>

				<c:url value="delete" var="dell">
					<c:param name="action" value="delete" />
					<c:param name="id" value="${item.id}" />
				</c:url>

				<c:url value="updateform" var="edit">
					<c:param name="action" value="edit" />
					<c:param name="id" value="${item.id}" />
				</c:url>

				<td><a href='<c:out value="${edit}"/>'>Edit</a></td>
				<td><a href='<c:out value="${dell}"/>'>Delete</a></td>

			</tr>
		</c:forEach>
		<tbody>

		</tbody>
	</table>
</body>
</html>