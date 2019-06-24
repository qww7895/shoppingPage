<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript">
function adding(){
	alert(forms.productName.value+"이 추가되었습니다")
}
function logOut(){
	alert("로그아웃 되셨습니다")
	location.href="login.jsp";
}
</script>
</head>
<body >
  
      <%
      	String names=null; 
  	
      	if(request.getParameter("name")!=null){
      	  	names =request.getParameter("name");
      		session.setAttribute("name",names);
      	}else{
    	  
    	  	names =(String)session.getAttribute("name");
      	}
     
      %>
       <form method=get name=forms action=add.jsp align="center">
      <%=names%>님이 원하시는 상품을 선택해주세요.
	  <% request.setCharacterEncoding("utf-8"); %>
     
         <table align ="center">
            <tr>
               <td><select name="productName">
                     <option value="반팔">반팔</option>
                     <option value="반바지">반바지</option>
                     <option value="슬리퍼">슬리퍼</option>
                     <option value="모자">모자</option>
               </select></td>
               <td></td>
            <tr>
               <td></td>
                
         </table>
         <input type = "submit" value = "상품 추가하기" onclick="adding()">
         <input type = "button" value = "장바구니 보기" onclick="location.href='checkOut.jsp'">
         <input type = "button" value = "로그아웃 하기" onclick="logOut()" >
  </form>
</body>
</html>