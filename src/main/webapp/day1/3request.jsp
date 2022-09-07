<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>request 객체</h3>
	<p>request 객체로 얻을 수 있는 정보는 무엇인지 확인.</p>
	<hr>
	<ul>
		<!-- http://localhost:8083/ 는 URL의 루트경 -->
		<li>요청 URL : <%=request.getRequestURL()%></li>
		<!-- Locator은 http://localhost:8083/jsp1/day1/3request.jsp -->
		<li>요청 URI : <%=request.getRequestURI()%></li>
		<!-- /jsp1/day1/3request.jsp -->
		<li>컨텍스트(context) : <%=request.getContextPath()%></li>
		<!-- /jsp1 -->
		<li><a href="1start.jsp">1start.jsp 로 가기</a></li>
		<li><a href="http://localhost:8083/jsp1/day1/1start.jsp">1start.jsp
				로 가기</a></li>
		<!-- /day1 폴더는 컨텍스트의 하위폴더 
					폴더가 동일하면http://localhost:8083/jsp1/day1/는 생략하고 href를 작성.  
					-->
		<li><a href="../test.jsp">1start.jsp 로 가기</a></li>
		<!-- 상대경로 -->
		<li><a href="http://localhost:8083/jsp1/test.jsp">1start.jsp로 가기</a></li>
		<!-- 절대경로 -->
		<li><a href="<%=request.getContextPath()%>/test.jsp">1start.jsp로 가기</a></li>
		<!-- 절대경로를 사용하는 방법 -->
	</ul>

</body>
</html>