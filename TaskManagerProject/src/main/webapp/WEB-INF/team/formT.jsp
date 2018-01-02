<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	inserer un Team :
	<form action="add" method="post">
		name : <input type="text" name="name"> <br>
		type user : 
		<select name="typeTeam" type="text">
			<option  value="free">1</option>
			<option  value="preminum">2</option>
			<option  value="company">3</option>
		</select>
		
		<br> <input type="submit" value="ajouter"> <input
			type="reset" value="retapper">
	</form>
</body>
</html>


