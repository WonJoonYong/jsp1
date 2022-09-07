<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	http://localhost:8083/jsp1/day3/alert.jsp 				
	http://localhost:8083/jsp1/day3/alert.jsp?msg=yes 		구매완료되었습니다.
	http://localhost:8083/jsp1/day3/alert.jsp?msg=no  		회원가입하셔야 구매 할 수 있습니다.
	http://localhost:8083/jsp1/day3/alert.jsp?msg=zero 		수량을 입력하세요.
	http://localhost:8083/jsp1/day3/alert.jsp?msg=
	http://localhost:8083/jsp1/day3/alert.jsp?msg=asdfas
 -->
	<%
	String msg = request.getParameter("msg");
	if (msg != null && msg.equals("yes"))
			pageContext.setAttribute("msg", "구매완료되었습니다.");
		else if (msg != null && msg.equals("no"))
			pageContext.setAttribute("msg", "회원가입하셔야 구매 할 수 있습니다.");
		else if (msg != null && msg.equals("zero"))
			pageContext.setAttribute("msg", "수량을 입력하세요.");
		else
			pageContext.setAttribute("msg", "알 수 없는 오류입니다.");
	%>
	<script type="text/javascript">
	alert('${msg}')		<%--${}는 표현언어(el) : 애트리뷰트값을 가져옵니다. --%>
	<%--alert(`${msg}`)--%>		//자바변수 사용할때
	location.href = '14buy.jsp' //자바스크립트에서 url 설정하며 새로운 요청 변경
</script>
</body>
</html>