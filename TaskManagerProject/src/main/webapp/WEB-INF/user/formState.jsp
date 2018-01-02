<%@page import="tn.iit.task.entites.Project"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
	integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
	integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
	crossorigin="anonymous"></script>
</head>
<%
	List<Project> projects = (List<Project>) session.getAttribute("ProjectsArray");
	/* if (projects != null) {
		for (Project project : projects) {
			out.println(project.toString());
		}
	}  */
%>

<body>
	<form action="add" method="post">
		<div class="form-group">
			<label for="exampleInputName">Name State</label> <input type="text"
				name="namestate" class="form-control" -sm> <br> <label
				class="sr-only" for="inlineFormInput">Date Création</label> <input
				type="date" name="datecreation" class="form-control" -sm> <br>
			<br> <label>projects</label> :
			
			
			<select name="project">
				<c:forEach items="${ProjectsArray}" var="item">
					<option value="<c:out value="${item.id}"/>"><c:out
							value="${item.nameProject}" /></option>
				</c:forEach>
				
				
				
			</select> <br> <br> <input type="submit" class="btn btn-primary"
				value="ajouter"> <input type="reset" value="retapper">
		</div>
	</form>



</body>
</html>


