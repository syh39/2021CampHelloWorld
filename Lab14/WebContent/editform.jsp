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
	<%@page import="com.booklist.dao.BookDao,com.booklist.bean.Book"%>

	<%
		String id = request.getParameter("id");
	Book u = BookDao.getRecordById(Integer.parseInt(id));
	%>

	<div class="container">

		<%@include file="header.html"%>

		<h1>회원정보 수정하기</h1>

		<form action="edituser.jsp" method="post">
			<div class="form_horizontal">
				<%-- <input type="hidden" name="id" value="<%=u.getId()%>" /> --%>

				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="Title">Title</label>
					<div class="col-sm-8">
						<input autofocus class="form-control" name="Title"
							value="<%=u.getTitle()%>">
					</div>
				</div>

				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="Author">Author</label>
					<div class="col-sm-7">
						<input class="form-control" name="Author"
							value="<%=u.getAuthor()%>">
					</div>
				</div>

				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="Comments">Comments</label>
					<div class="col-sm-10">
						<textarea class="form-control" name="Comments" rows="7" cols="20"
							value="<%=u.getAuthor()%>"></textarea>
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

		<%@include file="footer.html"%>

	</div>
</body>
</html>

