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
<title>Insert title here</title>
</head>
<body>
	<%
		// 		Set<Team> Teams =/* (Set<Team>) request.getAttribute("TeamArray");*/
		// 		out.print(Teams.size());
		User user = (User) request.getAttribute("oneuser");		
		out.print(user.toString());
	%>
	
modifier un User :
	<form action="edit" method="post">
		<input type="hidden" name="id" value="<%= user.getId()%>">
		first name : <input type="text" name="firstname" value="<%=user.getFirstname()%>"> <br>
		last name : <input type="text" name="lastname" value="<%=user.getLastname()%>"> <br>
		login : <input type="text" name="login" value="<%=user.getLogin()%>"> <br> password :
		<input type="text" name="password" value="<%=user.getPassword()%>"> <br>
		email : <input type="text" name="email" value="<%=user.getEmail()%>"> <br>
		 
		type user : 
		<select name="typeuser" type="text">
			<option value="free">free</option>
			<c:choose>
				<c:when test="${ oneuser.typeuser == 'free' }">
					<option value="ROLE_ADMIN">ROLE ADMIN</option>
				</c:when>
				<c:otherwise>
					<option value="ROLE_ADMIN" selected>ROLE ADMIN</option>
				</c:otherwise>
			</c:choose>
			<!-- <option  value="company">company</option> -->
		</select>
		
		<br> <input type="submit" value="modifier"> <input	type="reset" value="retapper">
	</form>
</body>
</html>