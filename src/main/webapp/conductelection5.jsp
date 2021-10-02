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
<%try
	{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ashu","root","Ashutosh@8051");
	String sql ="delete from Approve";
	PreparedStatement pst=con.prepareStatement(sql);
	int i=pst.executeUpdate();
	if(i>0)
	{
		String sql1="delete from Result";
		PreparedStatement pst1=con.prepareStatement(sql1);
		int j=pst1.executeUpdate();
		if(j>0)
		{
			response.sendRedirect("conductElection1.jsp");
		}
	}
	else{
		response.sendRedirect("conductElection1.jsp");
	}
	}
	catch(Exception e)
	{
	
	out.println(e);
	
	
	}
%>
</body>
</html>