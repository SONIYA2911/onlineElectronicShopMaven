<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.onlineelectronicshop.daoImpl.UserDaoImpl" %>
    <%@ page import="com.onlineelectronicshop.model.User" %>
  <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My profile</title>



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
<center><h1>My Profile</h1></center>

<%User user=(User) session.getAttribute("CurentUser");
UserDaoImpl daoImpl=new UserDaoImpl(); 
List<User> UsersList =daoImpl.showAllUser();
for(User user1:UsersList){
	if(user1.getUserName().equalsIgnoreCase(user.getUserName())){
		user=user1;
	}
}
%>

<label>User name:<%=user.getUserName() %></label>
<br><br>
<label>Email id:<%=user.getEmailId() %></label>
<br>
<br>
<label>Wallet amount:<%=user.getWallet() %></label>

<br><br>
<label><a href="viewHomePage.jsp">home</a></label>
<label><a href="rechargeWallet.jsp">Wallet</a></label>
</body>
</html>