<%@page import="com.onlineelectronicshop.model.Components"%>
<%@page import="java.util.List"%>
<%@page import="com.onlineelectronicshop.daoImpl.ComponentDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<style>
body{
    
    background-image: url("electronic new.jpg");
    background-repeat:no repeat;
    background-size: cover;
   
    font-family: Cambria;
}

table,td,tr{
border:1px solid black;
border-collapse:collapse;}
</style>
</head>
<body>
<form>
<table>
<tr>
<td>image</td>
<td>componentId</td>
<td>ComponentName</td>
<td>CategoryName</td>
<td>Description</td>
<td>TotalPrice</td>
</tr>
<%List<Components>user=(List<Components>)session.getAttribute("list");
for(int i=0;i<user.size();i++)
{
	Components comDao1=	user.get(i);
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