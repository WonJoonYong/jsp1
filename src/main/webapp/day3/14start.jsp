<%@page import="vo.Product"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- 14start.jsp에서 실행을 시작하면 14buy.jsp에서 화면을 출력(응답)하고 16save.jsp에서 입력값을 insert
	16save.jsp 에서 실행이 완료되면 14start.jsp로 요청.	
 -->
<%
	
	ProductDao dao = ProductDao.getInstance();
	List<Product> list = dao.getProducts();
	
	request.setAttribute("list", list);
	pageContext.forward("14buy.jsp");





%>