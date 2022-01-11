<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recharge wallet</title>
</head>
<body>
<h1>Recharge your wallet</h1>
<label>Enter emailId</label>
<input type="text" value="" id="">
<label>Enter </label>
<label for="CardNumber">Card Number:</label><br>
         <input type="number" name="AccountNumber" id="AccountNumber" placeholder="Enter card number"  required autofocus ><br><br>
                 
         <label for="cvv">CVV:</label><br>
         <input type="number" name="cvv" id="cvv" placeholder="Enter CVV" Pattern="[0-9]+" maxlength="3" ><br><br>
         
         <label for="Amount">Amount:</label><br>
         <input type="text" name="Amount" id="amount" placeholder="Enter Amount" Pattern="[1-9][0-9]+" maxlength="5" ><br><br>
         
          
         <button type="submit">Recharge Wallet</button>
             
    </fieldset>
</body>
</html>