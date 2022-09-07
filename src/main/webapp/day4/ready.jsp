<%@page import="java.sql.Date"%>
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
	String id = request.getParameter("custom");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String temp = request.getParameter("age");
	Date date = null;
	
	int age = 0;
%>
</body>
</html>