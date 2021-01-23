
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>View Users</title>
</head>
<body>

	<%@page
		import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="apptest.jsp">AppTest</a>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="about.jsp">About</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="data.jsp">Data</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="viewusers.jsp">Users</a>
				</li>
			</ul>
		</nav>

		<h1>List of Users</h1>

		<%
			List<User> list = UserDao.getAllRecords();
		request.setAttribute("list", list);
		%>

		<div class="table-responsive-sm">

			<table class="table table-hover">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Password</th>
					<th>Email</th>
					<th>Sex</th>
					<th>Country</th>
					<th class="d-print-none"><a class="btn btn-sm btn-success"
						href="adduserform.jsp">Add</a></th>

				</tr>
				<c:forEach items="${list}" var="u">
					<tr>
						<td>${u.getId()}</td>
						<td>${u.getName()}</td>
						<td>${u.getPassword()}</td>
						<td>${u.getEmail()}</td>
						<td>${u.getSex()}</td>
						<td>${u.getCountry()}</td>

						<td class="d-print-none"><a class="btn btn-sm btn-warning"
							href="editform.jsp?id=${u.getId()}">Edit</a> <a
							class="btn btn-sm btn-danger"
							href="deleteuser.jsp?id=${u.getId()}">Delete</a></td>
					</tr>
				</c:forEach>
			</table>


		</div>

		<footer>
			<p>&copy; 2019 - AppTest</p>
		</footer>
		<br />
</body>

</html>