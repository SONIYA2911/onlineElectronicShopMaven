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
<form action="admin.jsp">
<table>
<tr>
<td>ComponentId</td>
<td>ComponentName</td>
<td>CategoryName</td>
<td>Description</td>
<td>TotalPrice</td>
<td>Action</td>

</tr>
<%ComponentDaoImpl comDao=new ComponentDaoImpl();	
UserDaoImpl userDaoImpl=new UserDaoImpl();
List<Components> componentList=comDao.showComponent();

for(int i=0;i<componentList.size();i++)
{
Components comDao1=componentList.get(i);
session.setAttribute("componentId", comDao1.getCompoentId());
session.setAttribute("componentName" ,comDao1.getComponentName());
session.setAttribute("price",comDao1.getTotalPrice()); %>
<tr>
<td><%=comDao1.getCompoentId() %></td>
<td><%=comDao1.getComponentName()%></td>
<td><%=comDao1.getCategoryName()%></td>-
<td><%=comDao1.getDescription() %></td>
<td><%=comDao1.getTotalPrice() %></td>
<td>
<form action="updateProductServelt">
<br>
<lable>ComponentId:</lable>
<input type="text" name="componentId" value="<%=comDao1.getCompoentId()%>" readonly><br>
<label>Enter Price</label><br>
<input type="text" name="price" id="price">
<button type="submit">submit</button>
</form></td>

</tr>
<%} %>
</table>
</form>
</body>
</html>