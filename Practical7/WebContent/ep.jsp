<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Integer counter = (Integer)application.getAttribute("counter");
int cost=2;
if (counter ==null || counter == 0)
{
	counter = 1;
	out.println("Total Number of visitors :  "+counter+"\n");
	out.println("Total cost :  "+counter*cost);
}
else
{
	counter++;
	out.println("Total Number of visitors :  "+counter+"\n");
	out.println("Total cost :  "+counter*cost);
}
application.setAttribute("counter", counter);
%>
</body>
</html>