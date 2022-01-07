<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@  page import="com.onlineelectronicshop.daoImpl.ComponentDaoImpl"%>
  <%@ page import="com.onlineelectronicshop.model.Components" %>
  <%@ page import="com.onlineelectronicshop.daoImpl.UserDaoImpl" %>
  <%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%double price=(double)(session.getAttribute("price")); %>
<%String userId=(String)(session.getAttribute("userId")); %>
<%ComponentDaoImpl comDao=new ComponentDaoImpl();

String componentName=request.getParameter("componentName");
session.setAttribute("ComponentName", componentName);
//int comId=comDao.findComponentId(componentName);
%>

<form action="BuyServlet" method="post">
<label>Address</label>
<input id="address" name="address" >Address
<label>quantity</label>
<input type="number" name="quantity">
<button type="submit">order</button>
</form>
</body>
</html>