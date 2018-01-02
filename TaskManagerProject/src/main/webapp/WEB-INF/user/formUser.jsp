<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	inserer un utulisateur :
	<form action="add" method="post">
		first name : <input type="text" name="firstname"> <br>
		last name : <input type="text" name="lastname"> <br>
		login : <input type="text" name="login"> <br> password :
		<input type="text" name="password"> <br> 
		email :  <input type="text" name="email">
		type user : 
		<select name="typeuser" type="text">
			<option  value="free">free</option>
			<option  value="ROLE_ADMIN">ROLE ADMIN</option>
			<!-- <option  value="company">company</option> -->
		</select>
		<br> <input type="submit" value="ajouter"> <input
			type="reset" value="retapper">
	</form>
</body>
</html>


