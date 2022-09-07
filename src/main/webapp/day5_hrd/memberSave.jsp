<%@page import="hrd.vo.Vo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./15.css" />
</head>
<body>
<%@ include file = "header.jsp" %>
<h3>회원목록조회 및 정보수정</h3>
	<table>
		<tr>
			<th>회원번호</th>
			<th>회원성명</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>가입일자</th>
			<th>고객등급</th>
			<th>거주지역</th>
		</tr>
		<%
			@SuppressWarnings("unchecked")
			List<Vo> list = (List<Vo>)request.getAttribute("list");
			for(Vo vo : list){
		%>
		<tr>
			<td><a href="updateForm.jsp?seq=<%= vo.getSeq() %>"><%= vo.getSeq() %></a></td>
			<td><%= vo.getName() %></td>
			<td><%= vo.getPhoneNumber() %></td>
			<td><%= vo.getAddress() %></td>
			<td><%= vo.getSignDate() %></td>
			<td><%= vo.getGrade() %></td>
			<td><%= vo.getCity() %></td>
		</tr>
		<%
			}
		%>
	</table>
<%@ include file = "footer.jsp" %>
</body>
</html>