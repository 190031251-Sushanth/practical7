<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "java.io.*,java.util.*,javax.servlet.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<%
	try {
		
		String sid = request.getParameter("username"); 
		String pwd = request.getParameter("password");
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");

		String sql = "SELECT * FROM prac7 WHERE username = ? AND password = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setString(1,sid);
		ps.setString(2,pwd);
		
		ResultSet rs = ps.executeQuery();
		if(rs.next()) {
				out.println("Login Successful");
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("inlab_3.jsp");
	    	rd.forward(request, response);
		}
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}	%>
</body>
</html>