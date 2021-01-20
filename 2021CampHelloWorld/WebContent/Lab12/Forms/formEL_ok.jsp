<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 입력한 데이터는 request 객체를 통해 가져오게 된다.  -->
	<!-- 그렇게 가져온 데이타는 전부 문자이다.  -->
	<!-- 인코딩 맞춰주기 -->
	<%
		request.setCharacterEncoding("utf-8");
	%>

	<h4>입력하신 데이터는 다음과 같습니다.</h4>

	<fieldset>
		<legend>회원가입 정보</legend>
		First Name:
		${param.fname }  
		<br> Last Name:
		${param.lname }  
		<br> Email :
		${param.mail }  
		<br> Sex :
		${param.sex }  
		<br>
	</fieldset>


	<!-- 보통 이렇게 출력 -->

	<!-- jsp가 불리워질 때 바이트코드로 바뀌는데 그걸 서블릿이라고 한다. -->
	<!-- jsp코드를 쓰고 나서는 반드시 새로 런 해줘야 한다. -->

</body>
</html>