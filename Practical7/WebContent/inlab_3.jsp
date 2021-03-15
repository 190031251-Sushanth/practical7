<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
        import = "java.io.*,java.util.*,javax.servlet.*,java.sql.*" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<h3>Change Password</h3>
	<form action='inlab_4.jsp' action='post'>
			
		 <br>Username: <input type="text" name="username" placeholder="Enter Username" id="username" value="" required="required"></br>
   		 <br>Password: <input type="password" name="password" placeholder="Enter Your New password" id="password" value=""></br>
		<input type='submit' value='Submit'>
		
	</form>
</body>
</html>