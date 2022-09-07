<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file = "header.jsp" %>
</head>
<body>
<form action="18save.jsp" method = "post">
	<input type="text" name="custom" required="required" placeholder="아이디" />
	<input type="text" name="name" required="required" placeholder="이름"/>
	<input type="text" name="email" required="required" placeholder="이메일"/>
	<input type="number" name="age" required="required" placeholder="나이"/>
	<button>등록</button>
	</form>
</body>
</html>