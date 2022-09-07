<%@page import="java.util.List"%>
<%@page import="vo.CustomVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<table>
<%
	@SuppressWarnings("unchecked")
	List<CustomVo> list = (List<CustomVo>)request.getAttribute("list");
	for(CustomVo vo : list){
%>
      <%-- <li><%= vo.getCustom_id() %>&nbsp;: <a href="javascript:select('<%= vo.getName() %>')"><%= vo.getEmail() %></a>
         &nbsp;: (<%= vo.getAge() %>살) </li> --%>

	
	 <tr>
	<td><%=vo.getCustom_id() %></td>
	<td><%=vo.getName() %></td>
	<td><%=vo.getEmail() %></td>
	<td><%=vo.getAge() %></td>

	</tr>
<%
	}
%>
</table>

</body>
</html>