<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Valley of Victory</title>
</head>
<body>
<h1>Add Activity</h1>
<form:form commandName="actividad">
	<select name="actividad">
		<option value ="Box">Box</option>
		<option value="Pesas">Pesas</option>
		<option value="Cardio">Cardio</option>
		<option value="Swimming">Swimming</option>
	</select>
	<br><br>
	
	
	<table>
		<tr>
			<td>Minutes Exercise For Today:</td>
			<td><form:input path="minutes"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="Enter Exercise"/>
			</td>	
		</tr>
	</table>
	<br>
	<tr>
		<button type="button" onClick="alert('Sorpresa!')">Click Me!</button>
	</tr>
	<br>
</form:form>
</body>
</html>