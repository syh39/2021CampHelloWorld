<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.lab15.*, java.io.File"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>

<%@page import="com.lab15.dao.UserDao"%>
<jsp:useBean id="u" class="com.lab15.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u" />
<%
	String filename = "";
int sizeLimit = 15 * 1024 * 1024;
String realPath = request.getServletContext().getRealPath("upload");
System.out.println(realPath);
File dir = new File(realPath);
if (!dir.exists())
	dir.mkdirs();
MultipartRequest multpartRequest = null;
multpartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
String name = multpartRequest.getParameter("name");
String password = multpartRequest.getParameter("password");
String email = multpartRequest.getParameter("email");
String sex = multpartRequest.getParameter("sex");
String country = multpartRequest.getParameter("country");
filename = multpartRequest.getFilesystemName("image");

u.setName(name);
u.setPassword(password);
u.setEmail(email);
u.setSex(sex);
u.setCountry(country);
u.setImage(filename);

int i = UserDao.update(u);
response.sendRedirect("viewusers.jsp");
%>


