<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Set"%>
<%@page import="tn.iit.task.entites.Project"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project</title>
</head>
<body>
	<%
		// 		Set<Project> Projects =/* (Set<Project>) request.getAttribute("ProjectArray");*/
		// 		out.print(Projects.size());
		List<Project> Projects2 = (List<Project>) request.getAttribute("projectArray");
		out.print(Projects2.size());
	%>
	<a href="show">ajouter</a>
	<table>
		<thead>
			<tr>
				<td>name project</td>
				<td>date debut</td>
				<td>date fin</td>
				<td>type</td>
				<td>description</td>
			</tr>
		</thead>

		<c:forEach items="${projectArray}" var="project">
			<tr>
				<td><c:out value="${project.nameProject}"></c:out></td>
				<td><c:out value="${project.dateDebut}"></c:out></td>
				<td><c:out value="${project.dateFin}"></c:out></td>
				<td><c:out value="${project.type}"></c:out></td>
				<td><c:out value="${project.description}"></c:out></td>
				
				<c:url value="delete" var="dell">
					<c:param name="action" value="delete" />
					<c:param name="id" value="${project.id}" />
				</c:url>

				<c:url value="updateform" var="edit">
					<c:param name="action" value="edit" />
					<c:param name="id" value="${project.id}" />
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