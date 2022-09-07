<%@page import="vo.Product"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day2</title>
</head>


<body>
   
   <hr style="height:5px;background-color: green">
   <h3>상품 목록</h3>         
   <!-- 외래키 잠조 무결성 오류 해결 : -->
   <!-- 상품 목록 중 하나를 클릭하면 해당 pcode 값을 아래 input의 value값에 대입 -->
   <ul>
      <%
      // day2폴더 8buy,jsp를 애트리부트 사용해서 수정. 실행은 14buy에서 함.
     	 @SuppressWarnings("unchecked")
      	 List<Product> list =(List<Product>)request.getAttribute("list");
         for(Product vo : list) {			//jstl 라이브러리 사용해서 태그로 변경함.(예정)
      %>
      <li><%= vo.getPname() %>&nbsp;: <a href="javascript:select('<%= vo.getPcode() %>')"><%= vo.getPcode() %></a>
         &nbsp;: (<%= vo.getPrice() %>원)</li>
      <%
         }
      %>
   </ul>
   
   <hr>
   
   <h3>상품 구매</h3>
   <form action="16save.jsp" method="post">
      <h5>고객 ID는 참조 무결성에 위배되지 않는 값이어야 한다.</h5>
      <input name="custom" placeholder="고객 ID 입력">
      <input name="pcode" placeholder="상품 목록에서 선택" readonly>
      <input type="number" name="quantity" placeholder="구매 수량 입력">
      <button>구매</button>
   </form>
   
<script type="text/javascript">
   function select(v_pcode) {
      console.log(v_pcode);
      document.forms[0].pcode.value = v_pcode;
   }
</script>

</body>
</html>