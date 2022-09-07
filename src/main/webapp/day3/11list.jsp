<%@page import="java.util.List"%>
<%@page import="day1.vo.MyUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day3</title>
</head>
<body>
<%
	//애트리뷰트 값 가져오기 : getAttribute 메소드(리턴타입 object) -> ${}표현식 기호로 대체
	String name = (String)request.getAttribute("attr1"); 	// object타입을 String 변환
	MyUser vo = (MyUser)request.getAttribute("attr2");
	@SuppressWarnings("unchecked")
	List<String> list = (List<String>)request.getAttribute("attr3");
%>
<ul>
	<li>name : <%= name %>  </li>
	<li>vo : <%= vo %>  </li>
	<li>list : <%= list %>  </li>
</ul>
<!-- 실행은 10read.jsp에서하고 데이터가 11list.jsp 로 전달되는지 확인하기.
	실행된 URL도 확인하기. -->
</body>
</html>