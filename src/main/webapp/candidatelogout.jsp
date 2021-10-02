<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
		try
		{		
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ashu","root","Ashutosh@8051");
			response.sendRedirect("One.jsp");
		}
		catch(Exception e)
		{
			//e.printStackTrace();
		out.println(e);
		}
		
		
	%>
</body>
</html>l>