<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.onlineelectronicshop.daoImpl.ComponentDaoImpl" %>
     <%@ page import="com.onlineelectronicshop.daoImpl.OrderDaoImpl" %>
      <%@ page import="com.onlineelectronicshop.daoImpl.InvoiceDaoImpl" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Invoice</h3>
<label>Component Name</label>
<label>Quantity</label>
<label>Total Price</label>
<label>Order date</label>
<%
ComponentDaoImpl comDao=new ComponentDaoImpl();
OrderDaoImpl orderDao=new OrderDaoImpl();
InvoiceDaoImpl invoice=new InvoiceDaoImpl();
//invoice.showBill(user);
String userName=(String)session.getAttribute("userName");

int quantity=(int)session.getAttribute("quantity");
double totalprice=(double) session.getAttribute("totalprice");%>
</body>
</html>