<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
            import = "java.io.*,java.util.*,javax.servlet.*,java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		try {
			String  username = request.getParameter("username");
		     String password = request.getParameter("password");
		       
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");
			
			String sql = "update prac7 set password = ? where username = ?";
			
			
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(2, username);
			pstmt.setString(1, password);
	
			int count = pstmt.executeUpdate();
				
				if(count>0){
					out.println("Updated");
				} else {
					out.println("Not Updated");
				}	
	
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		%>
</body>
</html>