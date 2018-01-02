<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="tn.iit.task.entites.State"%>
<%@page import="tn.iit.task.entites.Project"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update State</title>
</head>
<body>
	<%
		List<Project> projects = (List<Project>) session.getAttribute("ProjectsArray");
		if (projects != null) {
			for (Project project : projects) {
				out.println(project.toString());
			}
		}
	%>
	modifier State :
	<form action="edit" method="post">
		<input type="hidden" name="id"
			value='<c:out value="${ oneState.id }" />'> name state: <input
			type="text" name="namestate"
			value="<c:out value="${ oneState.namestate }" />"> <br>
		type Team : <input type="date" name="datecreation"
			value='<fmt:formatDate value="${oneState.datecreation}" pattern="yyyy-MM-dd"/>'>
		<br> <br> <label>projects</label> :
		
		<select name="project">
			<c:forEach items="${ProjectsArray}" var="item">
				<option value="<c:out value="${item.id}"/>"><c:out
						value="${item.nameProject}" /></option>
			</c:forEach>
		</select> <br> <br> <input type="submit" value="modifier"> <input
			type="reset" value="retapper">
	</form>
</body>
</html>