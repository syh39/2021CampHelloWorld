<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="com.booklist.dao.BookDao"%>  
<jsp:useBean id="u" class="com.booklist.bean.Book"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  

<%  
BookDao.delete(u);  
response.sendRedirect("viewusers.jsp");  
%>  