<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@  page import="com.onlineelectronicshop.daoImpl.ComponentDaoImpl"%>
  <%@ page import="com.onlineelectronicshop.model.Components" %>
   <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Filter category</title>
</head>
<body>
<table>
<tr>
<td>s.no</td>
<td>Category Name</td>
<td>Component Name</td>
<td>Description</td>
<td>Price</td>
<td>image</td>
</tr>

<%
String category=(String)session.getAttribute("category");
ComponentDaoImpl comDao=new ComponentDaoImpl();	
List<Components> componentList=comDao.findCategory(category);
for(int i=0;i<componentList.size();i++)
{
	Components comDao1=componentList.get(i);
	session.setAttribute("componentName" ,comDao1.getComponentName());
	session.setAttribute("price",comDao1.getPrice());
	session.setAttribute("Category",comDao1.getCategoryName()); 
	%>

<tr>
<td><%comDao1.getCategoryName(); %></td>
<td><%comDao1.getComponentName();%></td>
<td><%comDao1.getDescription(); %></td>
<td><%comDao1.getPrice(); %></td>
<td><%comDao1.getImage(); %></td>
</tr>

<td><a href=filterComponents.jsp?</td>
<form>
<label></label>


<%} %>
</table>
</form>
</body>
</html>