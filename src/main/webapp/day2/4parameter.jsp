<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day2</title>
</head>
<body>
<h3>요청URL 의 입력파라미터 가져오기 (쿼리스트링 URL에 직접 입력)</h3>
<hr>
<p>쿼리스트링: 요청URL?이름=값1&amp;이름2=값2&amp;.. 에서 ? 뒤의 입력파라미터들이 연결된 문자열<br>
	서버가 처리할 입력파라미터 값들은 request객체에 저장되어 전달됨<br>
	파라미터를 가져오는 메소드는 getParameter("파라미터이름")
	예시 :http://localhost:8083/jsp1/day2/4parameter.jsp?data1=나나&amp;data2=123&amp;data3=hong
</p>
<%
	/* String data1 = request.getParameter("name1");
	int idata = Integer.parseInt(data1); */
%>
<ul>
	<li>data1 파라미터 : <%=request.getParameter("data1") %></li>
	<li>data2 파라미터 : <%=request.getParameter("data2") %></li>
	<li>data3 파라미터 : <%=request.getParameter("data3") %></li>
</ul>
<p>예시 : http://localhost:8083/jsp1/day2/4parameter.jsp?name=나나&amp;age=23&amp;country=korea</p>
<ul>
	<li>name : <%=request.getParameter("name") %></li>
	<li>age : <%=request.getParameter("age") %></li>
	<li>country : <%=request.getParameter("country") %></li>
	<li>address : <%=request.getParameter("address") %></li>
	<!-- URL에 없는 입력파라미터 가져오기 결과 : null -->
</ul>
<!-- 특수문자 코드 : &nbsp; &lt; &gt; &amp; &quot; &copy; -->
<p><a href="index.jsp">인덱스 go</a></p>
</body>
</html>