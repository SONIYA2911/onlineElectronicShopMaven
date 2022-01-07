<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@  page import="com.onlineelectronicshop.daoImpl.*"%>
  <%@ page import="com.onlineelectronicshop.model.*"%>
  
  <%@ page import="com.onlineelectronicshop.model.Cart" %>
  <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cart</title>
<style>
table,td,tr{
border:1px solid black;
border-collapse:collapse;
}
<!--<%//CartDaoImpl cartDao=new CartDaoImpl();

//Cart cart=new Cart();
//cartDao.insertCart(cart);
%>-->
<%//int productId=Integer.parseInt(request.getParameter("produId"));%>
<%//int cartId1=Integer.parseInt(request.getParameter(""));%>
</style>
</head>
<body>
<form action="insertcart" method="post">
Address Line :<input type="textarea" name="address" required>

Quantity :<input type="text" name="quantity">
<button type="submit">submit</button>

</form>
</body>
</html>