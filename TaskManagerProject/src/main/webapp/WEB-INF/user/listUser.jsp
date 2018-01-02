<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Set"%>
<%@page import="tn.iit.task.entites.User"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User</title>
</head>
<body>

	<%
		// 		Set<User> users =/* (Set<User>) request.getAttribute("userArray");*/
		// 		out.print(users.size());
		List<User> users2 = (List<User>) request.getAttribute("userArray");
		out.print(users2.size());

	%>
	<a href="show">ajouter</a>
	<table>
		<thead>
			<tr>
				<td>First Name</td>
				<td>Last Name</td>
				<td>Login</td>
				<td>password</td>
				<td>type</td>
				<td>email</td>
			</tr>
		</thead>

		<c:forEach items="${userArray}" var="user">
			<tr>
				<td><c:out value="${user.firstname}"></c:out></td>
				<td><c:out value="${user.lastname}"></c:out></td>
				<td><c:out value="${user.login}"></c:out></td>
				<td><c:out value="${user.password}"></c:out></td>
				<td><c:out value="${user.typeuser}"></c:out></td>
				<td><c:out value="${user.email}"></c:out></td>

				<c:url value="delete" var="dell">
					<c:param name="action" value="delete" />
					<c:param name="id" value="${user.id}" />
				</c:url>

				<c:url value="updateform" var="edit">
					<c:param name="action" value="edit" />
					<c:param name="id" value="${user.id}" />
				</c:url>

				<td><a href='<c:out value="${edit}"/>'>Edit</a></td>
				<td><a href='<c:out value="${dell}"/>'>Delete</a></td>

			</tr>
		</c:forEach>
		<tbody>

		</tbody>
	</table>

	<form action="../../spring_security_logout">
		<input type="submit" value="logout">
	</form>

</body>
</html>