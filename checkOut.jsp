<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style type="text/css">
div{text-align:center;}
</style>
<title>checkOut</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<div>
<%
   ArrayList<String> list = (ArrayList)session.getAttribute("productlist");
   if(list==null){out.print("아무것도 주문하지 않았습니다.");}
   else {
      for(int i=0;i<list.size();i++){
         out.println(list.get(i));
         }
   }
   
%> 

<% session.setAttribute("productlist",list); %>
<br>
<input type="button" value="더 주문하러가기" onclick="location.href='setProduct.jsp'">
</div>
   
</body>
</html>