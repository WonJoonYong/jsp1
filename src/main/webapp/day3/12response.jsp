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
	//http://localhost:8083/jsp1/day3/12response.jsp 로 엔터하면 
	//테스트는 1,2,3 중애 허너싺 살
	//out.print("<script>");
	//out.print("alert('자바스크립트 실행확인')");
	//out.print("</script>");

	//1. 2,3번 아무것도 실향 안하는 경우
	//http://localhost:8083/jsp1/day3/12response.jsp
	// 화면에 보이는 응답: 13response.jsp
	pageContext.forward("13response.jsp");	//2.번만 실행
	
	//url
	//화면에 보이는 응답 : 13response.jsp
	//response.sendRedirect("13response.jsp");	//3.번만 실행
 

%>
<h3>12response.jsp 에서 보내는 응답입니다.</h3>
</body>
</html>