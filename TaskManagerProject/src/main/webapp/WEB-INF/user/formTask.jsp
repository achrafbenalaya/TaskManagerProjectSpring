<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Inserer un Task :
	<form action="addTask" method="post">
		name : <input type="text" name="nametask"> <br>
		progress : <input type="text" name="progress"> <br>
		comments : <input type="text" name="comments"> <br> 
		description : <input type="text" name="description"> <br> 
		date debut : <input type="date" name="dateDebut"> <br> 
		date fin : <input type="date" name="dateFin"> <br>
		dueDate : <input type="date" name="dueDate"> <br>  
		priority :
		<select name="priority">
			<option  value="1">high priority</option>
			<option  value="0">low priority</option>
		</select>
		<br> <input type="submit" value="ajouter"> <input
			type="reset" value="retapper">
	</form>
	
</body>
</html>