<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
	text-decoration:none;
}
.h1 {
    margin-top: 20px;
    margin-left: 453px;
    font-size: 35px;
    color: yellow;
}
table {
    border: 10px solid yellow;
    width: 419px;
    margin-top: -217px;
    margin-left: 387px;
    height: -135px;
    color: yellow;
}
button {
    margin-top: 216px;
    margin-left: 657px;
    width: 155px;
    height: 34px;
    border-radius: 9px;
    text-decoration:none;
}
</style>
</head>
<body bgcolor="black">
	<h1 class="h1"> List Of Candidate </h1>
	<%
	try
	{		
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ashu","root","Ashutosh@8051");
		String id=(String)session.getAttribute("id");
		
		String sql="select * from candidate natural join Approve";
		PreparedStatement pst= con.prepareStatement(sql);
		ResultSet rs=pst.executeQuery();
		%>
		<table border="1">
		<tr>
		<th> Candidate ID</th>
		<th> Name</th>
		<th> Party Name</th>
		<th> Election Region</th>
		</tr>
		<%
		while(rs.next())
		{
			%>
			<tr>
			<td><%= rs.getInt(1) %></td>
			<td><%= rs.getString(2)+"	"+rs.getString(3)%></td>
			<td><%= rs.getString(8)%></td>
			<td><%= rs.getString(17)%></td>
			<% 
			//out.println(rs.getInt(1)+"	  "+rs.getString(2)+"	"+rs.getString(3)+"	"+rs.getString(4)+"		"+rs.getString(5));
		} 
		
}
catch(Exception e)
{
	out.println(e);
}


%>
<button><a href ="votervotecandidate.jsp">PROCEED FOR VOTE</button>
</body>
</html>