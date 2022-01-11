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
border:1px solid white;
border-collapse:collapse;
}

body{
    
    background-image: url("all home page.jpg");
    background-repeat:no repeat;
    background-size: cover;
   
    font-family: Cambria;
}
</style>
</head>
<body>

<table>
<tr>
<td style=color:white>ComponentName</td>
<td style=color:white>CategoryName</td>
<td style=color:white>Description</td>
<td style=color:white>TotalPrice</td>
<td style=color:white>Action</td>
</tr>
<%ComponentDaoImpl comDao=new ComponentDaoImpl();	
UserDaoImpl userDaoImpl=new UserDaoImpl();
List<Components> componentList=comDao.showComponent();

for(int i=0;i<componentList.size();i++)
{
Components comDao1=componentList.get(i);
session.setAttribute("componentName" ,comDao1.getComponentName());
session.setAttribute("price",comDao1.getPrice()); %>
<tr>
<td style=color:white><%=comDao1.getComponentName()%></td>
<td style=color:white><%=comDao1.getCategoryName()%></td>
<td style=color:white><%=comDao1.getDescription() %></td>
<td style=color:white><%=comDao1.getPrice() %></td>
<td style=color:white><%=comDao1.getAvailable() %></td>
<td style=color:white>
<form action="updateComponentServelt" method="post">

<lable style=color:white>ComponentName:</lable>
<input type="text" name="componentName" value="<%=comDao1.getComponentName()%>"></br>

<label style=color:white>Enter Price</label><br>
<input type="text" name="price" id="price" min="0">
<button type="submit">submit</button>
<button type="submit">delete</button>
</form></td>

</tr>
<%} %>
</table>
</form>
</body>
</html>