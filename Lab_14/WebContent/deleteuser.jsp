<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="com.lab14.dao.UserDao"%>  
<jsp:useBean id="u" class="com.lab14.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  

<%  
UserDao.delete(u);  
response.sendRedirect("viewusers.jsp");  
%>  