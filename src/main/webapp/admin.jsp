<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin page</title>
<style>

body{
    
    background-image: url("electronic new.jpg");
    background-repeat:no repeat;
    background-size: cover;
   
    font-family: Cambria;
}


</style>
</head>
<body>
<h1>Admin Page</h1>
<form action="showUser.jsp">
<label>List of users</label><br>
<button type="submit">Show all users</button>
</form>
<br>
<form action="viewComponent.jsp">
<label>Show Components</label><br>
<button type="submit">Show all components</button>

</form>
<br>
<form action="showProductAdmin.jsp">
<label>Update Product</label><br>
<button type="submit">click to update</button>
</form><br>
<lable><h3>Add new Product</h3></lable>
<form action="insertComponent.jsp">
<select name="category name" id="category name">
  <option value="Microcontroller">Micro controller</option>
  <option value="Integrated circuit">Integrated circuit</option>
  <option value="Discrete semiconductors">Discrete semiconductors</option>
  <option value="Communication">Communication</option>
    <option value="Sensor">Sensor</option>
    <option value="Connectors">Connectors</option>
    <option value="Boards,kits,programmers">Boards,kits,programmers</option>
    <option value="circuit protection">Circuit Protection</option>
      <option value=" Optoelectronics "> Opto electronics </option>
      <option value=" Tools and Hardwares "> Tools and Hardwares </option>
</select>

<button type="submit">click</button><br>
</form>
<form action="DeleteProductServlet">
<label>Enter componentName:</label><br>
<input type="text" name="componentId"><br>
<button type="submit">delete</button> 
<br>


<a href="Home.jsp">Home</a>


</form>
</body>
</html>