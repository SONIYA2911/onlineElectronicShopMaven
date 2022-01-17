<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@  page import="com.onlineelectronicshop.daoImpl.ComponentDaoImpl"%>
<%@ page import="com.onlineelectronicshop.model.Components"%>
<%@ page import="com.onlineelectronicshop.daoImpl.UserDaoImpl"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list of components</title>

<style>
{
padding
:
0
;

    
margin
:
0
;

    

}
body {
	background-image: url("home background.jpg");
	background-repeat: no repeat;
	background-size: cover;
	font-family: Cambria;
}

.menu-bar {
	background: white;
	text-align: center;
}

.menu-bar ul {
	display: inline-flex;
	list-style: none;
	color: #fff;
}

.menu-bar ul li {
	width: 100px;
	margin: 4px;
	padding: 1px;
}

.menu-bar ul li a {
	padding: 10px 10px;
	font-size: 17px;
	text-decoration:;
}

.button {
	background-color: rgba(218, 19, 19, 0.555);
	text-decoration: none;
	display: -moz-inline-box;
	padding: 5px 5px;
}

table, td, tr {
	border: 1px solid black;
	border-collapse: collapse;
}

td {
	style =color: white;
}

body {
	background-image: url("electronic new.jpg");
	background-repeat: no repeat;
	background-size: cover;
	font-family: Cambria;
}
</style>
</head>
<body>
	<nav>
		<div class="menu-bar">
			<ul>
				<li><a href="Home.jsp">Home</a></li>
				<!--  <li class="example"><input type="text" placeholder="Search.." name="components"></li>
            <li><a href="SearchComponts.jsp">search</a></li> -->


			</ul>
		</div>
	</nav>

	<form action="SearchComponentServlet">
	<label for="search"></label>
	<input type="text" name="search" id="search">
	<input type="submit" value="search">
	</form>
		
	 



	
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
			<%
			ComponentDaoImpl comDao = new ComponentDaoImpl();
			UserDaoImpl userDaoImpl = new UserDaoImpl();
			List<Components> componentList = comDao.showComponent();

			for (int i = 0; i < componentList.size(); i++) {
				Components comDao1 = componentList.get(i);

				session.setAttribute("componentName", comDao1.getComponentName());
				session.setAttribute("price", comDao1.getPrice());
				session.setAttribute("Category", comDao1.getCategoryName());
			%>
			<tr>
				<td><img alter="#alter" src="images1/<%=comDao1.getImage()%>"
					width="200" height="200"></td>
				<td><%=comDao1.getComponentId()%></td>
				<td><%=comDao1.getComponentName()%></td>
				<td><%=comDao1.getCategoryName()%></td>
				<td><%=comDao1.getDescription()%></td>
				<td><%=comDao1.getPrice()%></td>
				<td><a
					href="insertCart.jsp?componentId=<%=comDao1.getComponentId()%>&compantName=<%=comDao1.getComponentName()%>&price=<%=comDao1.getPrice()%>">Add
						to cart</a></td>
			</tr>
			<%
			}
			%>
		</table>
	</form>
</body>
</html>
