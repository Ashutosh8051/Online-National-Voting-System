<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import ="java.sql.*"%>
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
		int i=0;
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ashu","root","Ashutosh@8051");
		String Email=request.getParameter("email");
		String contactNumber= request.getParameter("phone");
		String username=request.getParameter("username");
		String Securityquestion=request.getParameter("securityQuestion");
		String Answer =request.getParameter("answer");
		String NewPassword= request.getParameter("newpassword");
		
			String sql ="select *from voter where email='"+Email+"' and contact_no='"+contactNumber+"'and username='"+username+"'and securityQuestion='"+Securityquestion+"'and securityAnswer='"+ Answer+"'";
			PreparedStatement pst=con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				i=1;
				pst.executeUpdate("update voter set password ='"+NewPassword+"' where username='"+username+"'");
				response.sendRedirect("candidatelogin.jsp?msg=done");
			}
			if(i==0)
			{
				response.sendRedirect("candidateforgot.jsp?msg=invalid");
			}
			
	}
	catch(Exception e)
	{
		//out.println(e);
	}



%>
</body>
</html>