<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="com.booklist.dao.BookDao"%>  
<jsp:useBean id="u" class="com.booklist.bean.Book"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=BookDao.save(u);  
if(i>0){  
response.sendRedirect("adduser-success.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%> 