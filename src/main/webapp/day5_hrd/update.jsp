
<%@page import="hrd.vo.Vo"%>
<%@page import="hrd.dao.Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String temp2 = request.getParameter("seq");
	String name = request.getParameter("name");
	String phoneNumber = request.getParameter("phoneNumber");
	String address = request.getParameter("address");
	String temp = request.getParameter("city");
	
	int seq = 0;
	int city = 0; String message = "";
	Dao dao = Dao.getInstance();
	String target = "";
	try{
		seq = Integer.parseInt(temp2);
		city = Integer.parseInt(temp);
		int cnt	= dao.update(new Vo(seq,null,phoneNumber,address,null,null,city));
		if (cnt==1) {
			message = "회원 정보 수정이 완료되었습니다.";
			target = "location.href = 'updateForm.jsp?id="+ seq +"';";
		}
		else{
			message ="회원정보 수정에 문제가 있습니다. 입력값을 확인하세요.";
			target = "history.back();";
		}
	} catch(Exception e) {		//SQL insert 문 외에 다른 Exception 모두 처리 
		message = "오류 :" + e.getMessage();		//NumberFormatException 을 비롯해서 모든 Exception 을 처리합니다.
		target = "history.back();";
	}
	
	out.print("<script>");
	out.print("alert('"+ message + "');");		
	out.print(target);
	out.print("</script>");
%>