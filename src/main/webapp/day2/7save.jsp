<%@page import="dao.ProductDao"%>
<%@page import="vo.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
<h3></h3>
	<%-- <%
		Product pr = new Product();
		
		pr.setPcode(request.getParameter("pcode"));
		pr.setCategory(request.getParameter("category"));
		pr.setPname(request.getParameter("pname"));
		pr.setPrice(Integer.parseInt(request.getParameter("price")));
		
		out.print("Pcode : \n" + pr.getPcode());
		out.print("Category : \n" + pr.getCategory());
		out.print("Pname : \n" + pr.getPname());
		out.print("Price : \n" + pr.getPrice()); 
	 	
		
		
	%> --%>
	<li>상품 코드 : <%=request.getParameter("pcode") %></li>
	<li>카테고리 : <%=request.getParameter("category") %></li>
	<li>상품 이름 : <%=request.getParameter("pname") %></li>
	<li>상품 가격 : <%=request.getParameter("price") %></li>
	
	 <!--   String pcode = request.getParameter("pcode");
      String category = request.getParameter("category");
      String pname = request.getParameter("pname");      // 객체에 변수 선언하지 않고 바로 저장!
      int price = Integer.parseInt(request.getParameter("price"));

      Product pd = new Product(pcode, category, request.getParameter("pname"), price);
	</h3> -->
	<%
	String temp = request.getParameter("price");
	int price = 0;	Product vo = null;
	
	try{
		price = Integer.parseInt(temp);
		
		vo = new Product(request.getParameter("pcode"),request.getParameter("category"),
				request.getParameter("pname"),price);
				
		ProductDao dao = ProductDao.getInstance();
		int cnt = dao.insert(vo);
		if(cnt==1) out.print("상품등록완료!!");
		else out.print("상품등록 실패 !!! - 입력값 확인.");
	}catch(NumberFormatException e){
		out.print("잘못된 price(가격) 값입니다.");
		out.print("<br> 상품등록실패 ");
	}
	%>
	
	<hr>
	<h3>출력</h3>
	<%= vo %>
</body>
</html>