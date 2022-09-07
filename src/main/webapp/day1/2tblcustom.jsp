<%@page import="vo.CustomVo"%>
<%@page import="java.util.List"%>
<%@page import="dao.CustomDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		border-collapse: collapse;
		width: 100%;
	}
	th{
		background-color : tomato;
		color : white;
	}
	td,th{
		padding : 7px 10px;
		border: 1px solid gray;
		text-align: center;
	}
	td:nth-child(1) {
	background-color: gray;
}
</style>
</head>
<body>
<% 
	CustomDao dao = CustomDao.getInstance();
	List<CustomVo> list = dao.getList();
%>
<p><%=list %></p>
<!-- tbl_custom 테이블의 전체 행을 가져와서 html 문서 태그 출력하기  -->
	<table>
		<tr>
			<th>custom_id</th>
			<th>name</th>
			<th>age</th>
			<th>email</th>
			<th>reg_date</th>
		</tr>
		
		
<%-- 		<tr>
		<%for (CustomVo vo : list ){ %>
			<td><%= vo.getCustom_id() %></td>
			<td><%= vo.getName() %></td>
			<td><%= vo.getAge() %></td>
			<td><%= vo.getEmail() %></td>
			<td><%= vo.getReg_date() %></td>
		</tr>
			<% } %> --%>
			
			<tr>
			<%for(int i =0;i<list.size();i++) {%>
			<td><%= list.get(i).getCustom_id() %></td>
			<td><%= list.get(i).getName() %></td>
			<td><%= list.get(i).getAge() %></td>
			<td><%= list.get(i).getEmail() %></td>
			<td><%= list.get(i).getReg_date() %></td>
			</tr>
			<% } %>
	</table>
	
	<%
		out.print("<h3>The End</h3>");		//system 없음 선언 없이 써도 되는 내장객체 (out.)
		out.print("<script>");
		//out.print("alert('out 객체테스트 중.')");  버튼으로 동작시킬때 사용.
		out.print("document.querySelector('h3').style.color='blue'");
		out.print("</script>");
	%>
	
</body>
</html>

































