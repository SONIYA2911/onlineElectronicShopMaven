<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@  page import="com.onlineelectronicshop.daoImpl.ComponentDaoImpl"%>
  <%@ page import="com.onlineelectronicshop.model.Components" %>
   <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Filter category name</title>
<style>
table,td,tr{
border:1px solid black;
border-collapse:collapse;
}
</style>
</head>
<body>
<form action="showproduct.jsp">
<table>
<tr>
<td>S.no</td>
<td>ComponentName</td>
<td>CategoryName</td>
</tr>
<%ComponentDaoImpl comDao=new ComponentDaoImpl();	
List<Components> componentList=comDao.showComponent();
for(int i=0;i<componentList.size();i++){
	
}
%>
</body>
</html>