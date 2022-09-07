<%@page import="hrd.vo.Vo"%>
<%@page import="hrd.dao.Dao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Dao dao = Dao.getInstance();
	List<Vo> list = dao.getList();
	
	request.setAttribute("list", list);
	pageContext.forward("memberSave.jsp");
%>