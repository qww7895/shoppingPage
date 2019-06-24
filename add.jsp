<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.ArrayList"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<%
ArrayList<String> List;
String productName=request.getParameter("productName");
%>

</head>
<body onload="adding()">

alert(<%=productName%>+"이 추가되었습니다"); 
<%
	if((ArrayList)session.getAttribute("productlist")==null){
	List = new ArrayList<String>();
}else{
	List=(ArrayList)session.getAttribute("productlist");

}
List.add(productName);
session.setAttribute("productlist", List);
response.sendRedirect("setProduct.jsp");
%>



</body>
</html>