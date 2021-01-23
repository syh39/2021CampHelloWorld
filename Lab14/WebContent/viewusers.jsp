
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
		import="com.booklist.dao.BookDao,com.booklist.bean.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<div class="container">
		<%@ include file="header.html" %>  

		<h1>List of Users</h1>

		<%
			List<Book> list = BookDao.getAllRecords();
		request.setAttribute("list", list);
		%>

		<div class="table-responsive-sm">

			<table class="table table-hover">
				<tr>
					<th>Id</th>
					<th>Title</th>
					<th>Author</th>
					<th>Comment</th>
					
					<th class="d-print-none"><a class="btn btn-sm btn-success"
						href="adduserform.jsp">Add</a></th>

				</tr>
				<c:forEach items="${list}" var="u">
					<tr>
						<td>${u.getId()}</td>
						<td>${u.getTitle()}</td>
						<td>${u.getAuthor()}</td>
						<td>${u.getComment()}</td>

						<td class="d-print-none"><a class="btn btn-sm btn-warning"
							href="editform.jsp?id=${u.getId()}">Edit</a> <a
							class="btn btn-sm btn-danger"
							href="deleteuser.jsp?id=${u.getId()}">Delete</a></td>
					</tr>
				</c:forEach>
			</table>


		</div>

		<%@include file="footer.html" %>
		<br />
</body>

</html>