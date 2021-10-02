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
			int id=Integer.parseInt(request.getParameter("t1"));
			%> 
			<table border="1">
			<tr>
			<th> Candidate ID</th>
			<th> Message </th>
			</tr>
			<% 
				String sql="select * from voter_message";
				PreparedStatement pst= con.prepareStatement(sql);
				ResultSet rs=pst.executeQuery();
				{
					while(rs.next())
					{
						%>
						<td><%=rs.getString(1) %></td>
						<td><%=rs.getString(2) %></td>
						<%
					}
				}
		}
	catch(Exception e)
	{
		out.println(e);
	}%>
</body>
</html>