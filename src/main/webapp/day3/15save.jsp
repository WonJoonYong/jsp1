<%@page import="vo.Buy"%>
<%@page import="dao.CustomDao"%>
<%@page import="dao.BuyDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	<!-- alert 표시하는 방법 중 하나로 참고만 하세요(alert.jsp 에서 자바스크립트 작성.) -->
<%
	//method post 로 전달된 값 중에 한글 등 다국어문자는 꼭 set인코딩 해야함.
	String id = request.getParameter("custom");
	String pcode = request.getParameter("pcode");
	String temp = request.getParameter("quantity");
	int quantity = 0;
	BuyDao dao = BuyDao.getInstance();
	CustomDao cdao = CustomDao.getInstance();
	
	String msg = "";
	try{
		//if(id.equals("viviz"))	
			//사용자 입력 id가 테이블에 있는지 확인해서 없으면 if(cdao.selectBYid(id)==null)
			if(cdao.selectByid(id)==null)
			throw new Exception("고객이 아니십니다.");	//임의로 Exception 오류 발생 - 문자열은 오류메시지 내용으로 설정.
		
		quantity = Integer.parseInt(temp);
		int cnt = dao.insert(new Buy(0,id,pcode,quantity,null));
		if(cnt==1)
			//out.print("구매완료!");
		msg = "yes";
	}catch(NumberFormatException e){
			//out.print("수량은 숫자로만 하세요.");
			//out.print("구매 실패");
			msg = "zero";
	}catch(Exception e){
		//out.print("오류" + e.getMessage());
		//out.print("회원가입을 하세요!");
		msg = "no";
	}
	//response.sendRedirect("14buy.jsp");
	response.sendRedirect("alert.jsp?msg=" + msg);
%>
<% %>
</body>
</html>