<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
request.setCharacterEncoding("UTF-8");
%>
<title>Insert title here</title>
</head>
<body>	
<%@ include file ="header.jsp" %>
<hr style="height">
<form action="7save.jsp" method="post">
<!-- method = 'post' : 입력파라미터를 url과 함께 전송하지않고 resqute 몸체에 저저ㅏㅇ
	지금처럼 insert,update 에는 method 를 post로 꼭 할것.
	기본값은 method='get')조회) 이 때에는 입력파라미터 url로 전송
 	url은 기본이 UTF-8로 인코딩 (전송크기에 제한. -->
	<input type="text" name="pcode" placeholder="상품코드 입력">
	<input type="text" name="category" placeholder="상품종류 입력">
	<input type="text" name="pname" placeholder="상품이름 입력">
	<input type="number" name="price" placeholder="상품가격 입력">
	<button>제출</button>
</form>
</body>
</html>