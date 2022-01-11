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
td{
style=color:white;
}


.searchbar {
	position: relative;
	top: 0px;
	left: 1090px;
}

body{
    
    background-image: url("electronic new.jpg");
    background-repeat:no repeat;
    background-size: cover;
   
    font-family: Cambria;
}
</style>
</head>
<body>
<br>
<div class="searchbar">
		<form action="SearchProductController">
			<label for="plan"></label> <input type="text" name="search"
				id="plan"> <input type="submit" value="search">
		</form>
	</div>






<a href="MyOrders.jsp">My Orders</a>
<form action="insertCartServlet" method="post">
<table>
<tr>
<td>image</td>
<td>componentId</td>
<td>ComponentName</td>
<td>CategoryName</td>
<td>Description</td>
<td>TotalPrice</td>
</tr>
<%
ComponentDaoImpl comDao=new ComponentDaoImpl();	
UserDaoImpl userDaoImpl=new UserDaoImpl();
List<Components> componentList=comDao.showComponent();

for(int i=0;i<componentList.size();i++)
{
Components comDao1=componentList.get(i);

session.setAttribute("componentName" ,comDao1.getComponentName());
session.setAttribute("price",comDao1.getPrice());
session.setAttribute("Category",comDao1.getCategoryName()); 
%>
<tr>
<td><img alter="#alter" src="images1/<%=comDao1.getImage()%>" width="200"height="200"></td>
<td><%=comDao1.getComponentId() %></td>
<td><%=comDao1.getComponentName()%></td>
<td><%=comDao1.getCategoryName()%></td>
<td><%=comDao1.getDescription() %></td>
<td><%=comDao1.getPrice()%></td>

<td><a href="insertCart.jsp?componentId=<%=comDao1.getComponentId()%>&compantName=<%=comDao1.getComponentName()%>&price=<%=comDao1.getPrice()%>">Add to cart</a></td>
</tr>
<%} %>
</table>

</form>
</body>
</html>






