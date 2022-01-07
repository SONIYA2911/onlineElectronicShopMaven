<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin page</title>
</head>
<body>
<h1>Admin Page</h1>
<form action="admin.jsp">
<label>List of users</label><br>
<a href="showuser.jsp">Show all user</a>
</form>
<br>
<form>
<label>Show Components</label><br>
<a href="showProductAdmin.jsp">Show all components</a>
</form>
<br>
<form action="updateProduct.jsp">
<label>Update Product</label><br>
<button type="submit">click to update</button>
</form>
<form action="DeleteProductServlet">
Enter productId:
<input type="text" name="componentId">
<button type="submit">delete</button> 
</form>

</body>
</html>