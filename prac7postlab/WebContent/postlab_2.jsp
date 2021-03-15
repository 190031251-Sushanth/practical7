<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
</head>
<body>
<h3>Payment Mode</h3>

<form action='postlab_3.jsp' method='post'>
	
	<label for='uname'>Username</label>
		<input type='text' name='uname' id='uname'>
		<label for='cname'>College Name</label>
		<input type='text' name='cname' id='cname'>
		<label for='amount'>Amount</label>
		<input type='number' name='amount' id='amount'>
		<input type='submit' value='Next'>

</form>
</body>
</html>