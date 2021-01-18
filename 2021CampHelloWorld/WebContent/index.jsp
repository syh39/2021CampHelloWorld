<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Hello World!!</h1>
<h1>test Git staging</h1>
<% out.print("welcome to jsp" + "<br>"); %>

<% this.log("message"); %>
<%= "Check the Browser log!" %>

<form action="welcome.jsp">  
<input type="text" name="uname" required>  
<input type="submit" value="go"><br/>  
</form>

<form action="welcome2.jsp">  
<p>Using Response Object</p>
<input type="submit" value="go to Naver"><br/>  
</form>



</body>
</html>