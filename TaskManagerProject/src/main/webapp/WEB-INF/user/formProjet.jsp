<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	inserer un projet :
	<form action="addProject" method="post">
		name projet: <input type="text" name="nameProject"> <br>
		date debut: <input type="date" name="dateDebut"> <br>
		date debut: <input type="date" name="dateFin"> <br> type
		user : <select name="type" type="text">
			<option value="free">1</option>
			<option value="preminum">2</option>
		</select><br>
		description projet: <input type="text" name="description"> <br>
		<br> <input type="submit" value="ajouter">  <input	type="reset" value="retapper">
	</form>

</body>
</html>