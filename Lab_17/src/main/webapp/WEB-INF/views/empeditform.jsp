<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-color: #e4f6f7;
	text-align: center;
}

#header {
	background-color: #6ee3e9;
	padding: 2% 2%;
}

#headername {
	color: navy;
}
</style>
<meta charset="UTF-8">
<title>Edit Employee</title>
</head>
<body>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<div id=header>
		<h1 id=headername>Edit Employee</h1>
	</div>


	<center>
		<form:form method="POST" action="../editsave">
			<fieldset>

				<legend>Edit</legend>
				<table>
					<tr>
						<td></td>
						<td><form:hidden path="id" /></td>
					</tr>
					<tr>
						<td>Name :</td>
						<td><form:input path="name" /></td>
					</tr>
					<tr>
						<td>Salary :</td>
						<td><form:input path="salary" /></td>
					</tr>
					<tr>
						<td>Designation :</td>
						<td><form:input path="designation" /></td>
					</tr>

					<tr>
						<td></td>
						<td><input type="submit" value="Edit Save" /></td>
					</tr>
				</table>
				</fieldset>
		</form:form>		
	</center>




</body>
</html>