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
<title>Insert title here</title>
</head>
<body>
	<%
		Team Team = (Team) request.getAttribute("oneTeam");
		//out.print(Team.toString());
	%>

	modifier un Team :
	<form action="edit" method="post">
		<input type="hidden" name="id" value="<%=Team.getId()%>"> name
		: <input type="text" name="name" value="<%=Team.getName()%>">
		<br> type Team : <select name="typeTeam" type="text">
			<option value="free">free</option>
			<option value="preminum">preminum</option>
			<option value="company">company</option>
		</select><br>
		
		<select name="organization">
			<c:forEach items="${OrganisationArray}" var="item">
				<option value="<c:out value="${item.id}"/>"><c:out
						value="${item.name}" /></option>
			</c:forEach>
			
		</select> <br> <input type="submit" value="modifier"> <input type="reset" value="retapper">
	</form>
</body>
</html>