<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Welcom, Enter the user Details</h3>
<form:form method="POST" action ="/Resture" modelAttribute="user">
<table>
<tr>
<td><from:label>Name:</from:label>
</td>
<td><from:input type:"text"/></td>
</tr>
<tr>
<td><from:label>PassWord:</from:label>
</td>
<td><from:input type:"password"/></td>
</tr>
<tr>
<td><input type="submit" value="submit"/></td>
</tr>
</table>
</form:form>
</body>
</html>