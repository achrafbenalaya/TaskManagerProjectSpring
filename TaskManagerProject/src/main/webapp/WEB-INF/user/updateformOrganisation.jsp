<%@page import="tn.iit.task.entites.Organisation"%>
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
	Organisation Organisation = (Organisation) request.getAttribute("oneOrganisation");
		out.print(Organisation.toString());
	%>

modifier une organisation :
	<form action="edit" method="post">
		<input type="hidden" name="id" value="<%=Organisation.getId()%>">
		nom du organisation : <input type="text" name="name" value="<%=Organisation.getName()%>"> <br>
		date creation: <input type="date" name="datecreation" value="<%=Organisation.getDatecreation()%>"> <br>
				Type : <select name="type" type="text">
			<option value="free">test1</option>
			<option value="preminum">test2</option>
		</select><br>
				</select>
		<br> <input type="submit" value="modifier"> <input
			type="reset" value="retapper">
	</form>
</body>
</html>