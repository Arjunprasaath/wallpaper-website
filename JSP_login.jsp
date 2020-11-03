<%@ page language="java" contentType="text/html ; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import ="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>log_in jsp</title>
</head>
<body>
<%

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String URL = "jdbc:mysql://localhost:3306/mini_project_ip";
		conn = DriverManager.getConnection(URL,"root" ,"root");
		ps = conn.prepareStatement("select * from user_info where email = ? && password = ?");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		ps.setString(1,email);
		ps.setString(2,password);
		if(email!=null && password!=null){
			response.sendRedirect("main_signed.html");

		}		
		rs.close();
		ps.close();
		conn.close();
		
	}catch(Exception e){out.println(e);}
	
%>
</body>
</html>