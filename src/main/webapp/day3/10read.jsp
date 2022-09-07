<%@page import="java.util.List"%>
<%@page import="day1.vo.MyUser"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

// 	자바 소스만 작성되는 파일에는 html태그 없어도 됨.

//1. 애트리뷰트에 저장할 데이터
	String name = "나나";
	MyUser vo = new MyUser("김모모",28,true);
	List<String> list = new ArrayList<>();
	list.add("momo");list.add("사나");list.add("twice");
	list.add("홍길동");list.add("john");

//2. 애트리뷰트에 저장하기 : 첫번쨰 인자는 애트리뷰트 이름 , 두번쨰는 저장할 데이터(object타입.)
	request.setAttribute("attr1", name);
	request.setAttribute("attr2", vo);
	request.setAttribute("attr3", list);

//3. 애트리뷰트를 전달해 줄 페이지 (url) : pageContext) JSP 내장 객체. : pageContext는 JSP내장 객체임.
	pageContext.forward("11list.jsp");		//pageContext 객체는 현재 서버페이지의 정보를 저장
											//forward 메소드는 지정된 jsp페이지로 request를 전달
	//10read.jsp로 요청된 request를 11list.jsp로 전달
	//10read.jsp 저장한 애트리뷰트를 request애트리뷰트에 저장해서 11list.jsp로 전달 / 출력하기 위한 코드.
	//pageContext.forward("11list.jsp"); -> 저장된 애트리뷰트는 11list.jsp에서만 사용할 수 있음.
%>
