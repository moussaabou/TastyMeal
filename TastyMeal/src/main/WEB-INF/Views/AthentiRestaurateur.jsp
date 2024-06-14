<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Testy Meal</title>
</head>
<body>
<h3>slt, Enter Svp le donne</h3>
<form:form method="POST" action ="/Athenti" modelAttribute="use">
<table>
<tr>
<td><from:label>Name:</from:label>
</td>
<td><input type:"text"/></td>
</tr>
<tr>
<td><from:label>Mot passe:</from:label>
</td>
<td><input type:"password"/></td>
</tr>
<tr>
<td><input type="submit" value="submit"/></td>
</tr>
</table>
</form:form>
</body>
</html>