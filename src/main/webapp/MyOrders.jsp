<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.onlineelectronicshop.daoImpl.OrderDaoImpl" %>
     <%@ page import="com.onlineelectronicshop.daoImpl.*" %>
     <%@ page import="com.onlineelectronicshop.model.*" %>
  <%@ page import="java.util.List" %>
  <%@ page import="java.time.LocalDate" %>
<%@page import="java.sql.ResultSet" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Orders</title>
<style>
table,td,tr{
border:1px solid black;
border-collapse:collapse;
}
</style>
</head>
<body>
<h1>My Orders</h1>
<table>
<tr>
<td>User Name</td>
<td>Component Name</td>
<td>Quantity</td>
<td>Price</td>
<td>Order Date</td>
</tr>
<%OrderDaoImpl orderDao=new OrderDaoImpl();	
int userId=(int) session.getAttribute("userId");
UserDaoImpl userDao=new UserDaoImpl();
ComponentDaoImpl comDao=new ComponentDaoImpl();
System.out.println(userId);
ResultSet rs=orderDao.showOrder(userId);
%>
<!-- 
or(int i=0;i<orderList.size();i++){
	Order order=orderList.get(i);
LocalDate date=orderList.get(i).getOrderDate();
System.out.println(date);

-->
<% while(rs.next()){ 
System.out.println(rs.getInt(2));
	int userid=rs.getInt(2);
int compId=rs.getInt(3);
User user=userDao.findUser(userid);
ResultSet rs1=comDao.findCompoent(compId);
if(rs1.next()){
%>

<tr>
<td><%=user.getUserName() %></td>
<td><%=rs1.getString(2) %></td>
<td><%=rs.getInt(4) %></td>
<td><%=rs.getDouble(5)%>
<td><%=rs.getDate(7) %>
</tr>

<%} } %>
</table>

<span><a href="Home.jsp">home page</a></span>


</body>
</html>