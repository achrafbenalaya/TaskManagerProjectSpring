<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
inserer une organisation :
	<form action="addOrganisation" method="post">
		name Organisation: <input type="text" name="name"> <br>
		date Creation: <input type="date" name="datecreation"> <br>
		user : <select name="type" type="text">
			<option value="free">1</option>
			<option value="preminum">2</option>
		</select><br>
		<br> <input type="submit" value="ajouter">  <input	type="reset" value="retapper">
	</form>
</body>
</html>