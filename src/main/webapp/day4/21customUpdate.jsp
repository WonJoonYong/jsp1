<%@page import="vo.CustomVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file = "header.jsp" %>
</head>
<h3>회원정보수정</h3>
<body>

<form action="22update.jsp">
<input type="text" name="custom" required="required" placeholder="수정할아이디 입력" />
	<input type="text" name="name" required="required" placeholder="수정 할 이름 입력"/>
	<input type="text" name="email" required="required" placeholder="수정 할 이메일"/>
	<input type="number" name="age" required="required" placeholder="수정 할 나이"/>
	<button>수정</button>
</form>

</body>
</html>