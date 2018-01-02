<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Set"%>
<%@page import="tn.iit.task.entites.Team"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TEAM</title>
<!-- <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
<link href="./resources/js/bootstrap.bundle.min.js" rel="stylesheet"> -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</head>
<body>
	<%
		List<Team> Teams2 = (List<Team>) request.getAttribute("teamArray");
		//out.print(Teams2.size());
	%>
	
<a href="show" class="btn btn-primary" >ajouter</a>
	<table class="table">
		<thead>
			<tr>
				<td>name</td>
				<td>type</td>
				<td>org</td> 
			</tr>
		</thead>

		<c:forEach items="${teamArray}" var="team">
			<tr>
				<td><c:out value="${team.name}"></c:out></td>
				<td><c:out value="${team.typeTeam}"></c:out></td>
				<td><c:out value="${team.organisation.name}"></c:out></td>

				<c:url value="delete" var="dell">
					<c:param name="action" value="delete" />
					<c:param name="id" value="${team.id}" />
				</c:url>

				<c:url value="updateform" var="edit">
					<c:param name="action" value="edit" />
					<c:param name="id" value="${team.id}" />
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