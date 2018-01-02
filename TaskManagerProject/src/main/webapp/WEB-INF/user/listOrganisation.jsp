<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Set"%>
<%@page import="tn.iit.task.entites.Organisation"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	
		List<Organisation> Organisation = (List<Organisation>) request.getAttribute("OrganisationArray");
		out.print(Organisation.size());
	%>
	<a href="show">ajouter</a>
	<table>
		<thead>
			<tr>
				<td>name organisation</td>
				<td>date Creation</td>
				<td>type</td>

			</tr>
		</thead>

		<c:forEach items="${OrganisationArray}" var="organisation">
			<tr>
				<td><c:out value="${organisation.name}"></c:out></td>
				<td><c:out value="${organisation.datecreation}"></c:out></td>
				<td><c:out value="${organisation.type}"></c:out></td>

				<c:url value="delete" var="dell">
					<c:param name="action" value="delete" />
					<c:param name="id" value="${organisation.id}" />
				</c:url>

				<c:url value="updateform" var="edit">
					<c:param name="action" value="edit" />
					<c:param name="id" value="${organisation.id}" />
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