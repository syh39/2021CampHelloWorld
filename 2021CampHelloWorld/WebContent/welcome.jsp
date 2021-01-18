<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%  
out.println("This is Scriptlet Tag" + "<br>");
String name=request.getParameter("uname");  
out.println("welcome "+name+ "<br><br>");  

session.setAttribute("user",name);  

%>  

<%= "This is Expression Tag <br>" %>  
<%= "Welcome "+request.getParameter("uname") + "<br><br>" %>  


<%!   
int cube(int n){  
return n*n*n;  
}  
%>  
<%= "This is Declaration Tag<br>" %>  
<%= "Cube of 3 is:"+cube(3) %>  

<br>
<h4>Using Session Object</h5> 
<a href="second.jsp">second jsp page</a>
</body>
</html>