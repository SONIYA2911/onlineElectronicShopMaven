<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OrderSuccess</title>
<style>

body{
    
    background-image: url("all home page.jpg");
    background-repeat:no repeat;
    background-size: cover;
   
    font-family: Cambria;
}

</style>
</head>
<body>
<form action="MyOrders.jsp">


<center><h1 style=color:white>Order success! Thank You!!</h1>
<h2 style=color:white><i>Your Payment Is Debited from Your Wallet</i></h2>
<button type="submit">click to check order</button>
<span><a href="insertCart.jsp">Add to cart</a></span>


<%double totalprice=(double) session.getAttribute("totalprice");%>
<h2><i>Your Total Amount is : <%=totalprice %></i></h2>

<%double wallet1=(double)session.getAttribute("wallbal"); %>
<h2><i> Your Revised Wallet Amount : <%=wallet1 %></i></h2>

</form>
</body>
</html>