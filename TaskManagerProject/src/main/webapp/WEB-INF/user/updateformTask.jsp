<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="tn.iit.task.entites.Task"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
Modifier un Task :
	<form action="edit" method="post">
	<input type="hidden" name="id" value='<c:out value="${ oneTask.id }" />'/>
		name : <input type="text" name="nametask" value='<c:out value="${ oneTask.nametask }" />'> <br>
		progress : <input type="text" name="progress" value='<c:out value="${ oneTask.progress }" />'> <br>
		comments : <input type="text" name="comments" value='<c:out value="${ oneTask.comments }" />'> <br>
		description : <input type="text" name="description" value='<c:out value="${ oneTask.description }" />'> <br>
		date debut : <input type="date" name="dateDebut" value='<c:out value="${ oneTask.dateDebut }" />'> <br>
		date fin : <input type="date" name="dateFin" value='<c:out value="${ oneTask.dateFin }" />'> <br>
		dueDate : <input type="date" name="dueDate" value='<c:out value="${ oneTask.dueDate }" />'> <br>
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