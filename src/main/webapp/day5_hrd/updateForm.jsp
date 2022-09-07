
<%@page import="hrd.vo.Vo"%>
<%@page import="hrd.dao.Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file ="header.jsp" %>
<%
	Dao dao = Dao.getInstance();
	String temp = request.getParameter("seq");
	int seq = Integer.parseInt(temp);
	Vo vo = dao.selectBySeq(request.getParameter("seq"));
	if(vo!= null){
%>
	<h3>회원정보 수정</h3>
	<p>회원 휴대폰번호, 주소, 도시코드 수정 가능합니다.</p>
	<form action="update.jsp" method="post">
		<input name="seq" value="<%= vo.getSeq()%>" readonly>
		<input name="name" value="<%= vo.getName()%>" readonly>
		<input name="phoneNumber" value="<%= vo.getPhoneNumber()%>">
		<input name="address" value="<%= vo.getAddress()%>">
		<input name="city_code" value="<%= vo.getCity()%>">
		<button>수정</button>  
		<button type="reset">다시쓰기</button>
	</form>
<%
	}else{
		out.print("<script>");
		out.print("alert('잘못된 아이디입니다.');");
		out.print("history.back();");
		out.print("</script>");
	}
%>
<%@ include file = "footer.jsp" %>
</body>
</html>