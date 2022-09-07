<%@page import="vo.CustomVo"%>
<%@page import="java.sql.Date"%>
<%@page import="dao.BuyDao"%>
<%@page import="dao.CustomDao"%>
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
	CustomDao cdao = CustomDao.getInstance();
	String msg = "";
	out.print("<script>");
	
	try{
		if(cdao.selectByid(id)!=null)
			throw new Exception("중복된 아이디 입니다.");
	
		age = Integer.parseInt(temp);
		int cnt = cdao.insert(new CustomVo(id,name,email,age,null));
		if(cnt==1)
			msg ="등록 완료";
		else
			msg = "등록에 실패했습니다.";
	}catch(Exception e){
		msg = e.getMessage();
	}
	out.print("alert('"+msg+"');");
	out.print("location.href='17customJoin.jsp'");
	out.print("</script>");
	
%>
</body>
</html>