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
<title>list of components</title>
<style>
table,td,tr{
border:1px solid black;
border-collapse:collapse;
}
</style>
</head>
<body>
<form action="Order.jsp">
<table>
<tr>
<td>ComponentId</td>
<td>ComponentName</td>
<td>CategoryName</td>
<td>Description</td>
<td>TotalPrice</td>

</tr>
<%ComponentDaoImpl comDao=new ComponentDaoImpl();	
UserDaoImpl userDaoImpl=new UserDaoImpl();
List<Components> componentList=comDao.showComponent();

for(int i=0;i<componentList.size();i++)
{
Components comDao1=componentList.get(i);
session.setAttribute("componentId", comDao1.getCompoentId());
session.setAttribute("componentName" ,comDao1.getComponentName());
session.setAttribute("price",comDao1.getTotalPrice());
session.setAttribute("Category",comDao1.getCategoryName()); %>
<tr>
<td><%=comDao1.getCompoentId() %></td>
<td><%=comDao1.getComponentName()%></td>
<td><%=comDao1.getCategoryName()%></td>
<td><%=comDao1.getDescription() %></td>
<td><%=comDao1.getTotalPrice() %></td>
<td><button type="submit"><a href="Order.jsp?componentName=comDao1.getComponentName()%"></a>Buy</button></td>
</tr>
<%} %>
</table>
</form>
</body>
</html>