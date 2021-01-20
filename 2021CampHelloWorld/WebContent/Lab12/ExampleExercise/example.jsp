<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>JSP page directive</h3>
<%@ page import="java.util.Date" %>  
Today is: <%= new Date() %>  

<%@ page info="composed by YohanSun" %>  
<% out.print(getServletInfo()); %>

<h3>JSP include directive</h3>
<%@ include file="header.html" %>  
Today is: <%= java.util.Calendar.getInstance().getTime() %>  

<h3>Action Elements</h3>
<h4>forward</h4>
<i>Exercise done in index.jsp</i>


<h4>applet in JSP</h4>
<h1>Mouse Drag Example</h1>  
  
 <jsp:plugin align="middle" height="500" width="500" type="applet"  code="MouseDrag.class"  
name="clock" codebase="."/>
  

</body>
</html>