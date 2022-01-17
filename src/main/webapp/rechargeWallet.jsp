<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recharge wallet</title>
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

<form action="RechargeWalletServlet" method="post">
<h1>Recharge your wallet</h1>
 
         <label for="Amount">Amount:</label><br>
         <input type="text" name="wallbal" id="wallbal" placeholder="Enter Amount" Pattern="[1-9][0-9]+" maxlength="3" min="0"><br><br>
        <button type="submit">Recharge Wallet</button>
             
    </fieldset>
    <br>
    <label><a href="viewHomePage.jsp">Home</a></label>
    </form>
</body>
</html>