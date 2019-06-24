<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%session.invalidate(); %>
<center>
<H2>로그인</H2>

<% request.setCharacterEncoding("utf-8"); %>
<form method=get action=setProduct.jsp >
<table>

   <tr><input type="text" name="name" id="name"><input type = "submit" value = "확인"></tr>
</table>


</center>
</body>
</html>