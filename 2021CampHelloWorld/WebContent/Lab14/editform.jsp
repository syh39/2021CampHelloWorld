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
<title>Edit Form</title>
</head>
<body>
	<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.User"%>

	<%
		String id = request.getParameter("id");
	User u = UserDao.getRecordById(Integer.parseInt(id));
	%>

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

		<h1>회원정보 수정하기</h1>

		<form action="edituser.jsp" method="post">
			<div class="form_horizontal">
				<input type="hidden" name="id" value="<%=u.getId()%>" />

				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="name">Name</label>
					<div class="col-sm-8">
						<td><input type="text" name="name" value="<%=u.getName()%>" /></td>
						<%-- <input autofocus class="form-control" name="name"
							value="<%=u.getName()%>"> --%>
					</div>
				</div>

				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="password">Password</label>
					<div class="col-sm-7">
						<td><input type="password" name="password"
							value="<%=u.getPassword()%>" /></td>
						<%-- <input class="form-control" name="password"
							value="<%=u.getPassword()%>"> --%>
					</div>
				</div>

				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="email">Email</label>
					<div class="col-sm-7">
						<td><input type="email" name="email"
							value="<%=u.getEmail()%>" /></td>
						<%-- <input class="form-control" name="email" value="<%=u.getEmail()%>"> --%>
					</div>
				</div>

				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="email">Sex</label>
					<div class="col-sm-7">
						<td><input type="radio" name="sex" value="male" />Male <input
							type="radio" name="sex" value="female" />Female</td>
					</div>
				</div>

				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="country">Country</label>
					<div class="col-sm-7">
						<td><select name="country">
								<option>USA</option>
								<option>India</option>
								<option>Korea</option>
								<option>China</option>
								<option>Japan</option>
								<option>Germany</option>
								<option>Turkey</option>
								<option>France</option>
								<option>Russia</option>
								<option>Mexico</option>
								<option>Pakistan</option>
								<option>Afghanistan</option>
								<option>Berma</option>
								<option>Other</option>
						</select></td>
					</div>
				</div>

				<div class="form-group row">
					<label class="col-form-label col-sm-2"></label>
					<div class="col-sm-10">
						<input type="submit" name="" value="Update"
							class="btn btn-default btn-warning"> <a
							class="btn btn-outline-dark cancel" href="viewusers.jsp">Cancel</a>
					</div>
				</div>
			</div>
		</form>

		<footer>
			<p>&copy; 2019 - AppTest</p>
		</footer>

	</div>
</body>
</html>

