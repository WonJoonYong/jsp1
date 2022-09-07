<%@page import="hrd.vo.Vo"%>
<%@page import="hrd.dao.Dao"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String temp1 = request.getParameter("seq");
	String name = request.getParameter("name");
	String phoneNumber = request.getParameter("phoneNumber");
	String address = request.getParameter("address");
	String signDate = request.getParameter("signDate");
	String grade = request.getParameter("grade");
	String temp2 = request.getParameter("city");
	
	DateFormat sdFormat = new SimpleDateFormat("yyMMdd");

	
	int seq=0; 
	int city=0; 
	String message = "";
	
	Dao dao = Dao.getInstance();
	String target = "";
	Vo vo;
	
	
	try{
		seq = Integer.parseInt(temp1);
		city = Integer.parseInt(temp2);
		
		int cnt = dao.insert(new Vo(seq,name,phoneNumber,address,null,grade,city));
		if(cnt==1){
			message = "회원등록이 완료되었습니다. 입력값을 확인하세요";
			target = "location.href = 'memberList.jsp'";
		}else {
			message = "회원등록에 문제가 있씁니다. 입력값을 확인하세요";
			target = "history.back();";
		}
	} catch (Exception e){
		message = "오류 : " + e.getMessage();
		target = "history.back();";
	}
	
	out.print("<script>");
	out.print("alert('"+ message +"');");
	out.print(target);
	out.print("</script>");
	
%>