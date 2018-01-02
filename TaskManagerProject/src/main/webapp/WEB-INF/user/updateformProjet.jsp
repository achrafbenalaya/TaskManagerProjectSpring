<%@page import="tn.iit.task.entites.Project"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Set"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		Project project = (Project) request.getAttribute("oneProject");
		//out.print(project.toString());
	%>

	modifier un Project :
	<form action="edit" method="post">
		<input type="hidden" name="id" value="<%=project.getId()%>">
		nom du projet : <input type="text" name="nameProject"
			value="<%=project.getNameProject()%>"> <br> date debut:
		<input type="date" name="dateDebut"
			value="<%=project.getDateDebut()%>"> <br> date debut: <input
			type="date" name="dateFin" value="<%=project.getDateFin()%>">
		<br> type user : <select name="type" type="text">
			<option value="free">free</option>
			<option value="preminum">preminum</option>
		</select><br> </select> <br> <input type="submit" value="modifier"> <input
			type="reset" value="retapper">
	</form>
</body>
</html>