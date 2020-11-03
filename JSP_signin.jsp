<%@ page language="java" contentType="text/html ; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import ="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Sign_in jsp</title>
</head>
<body>
<%
	Connection conn = null;
	PreparedStatement ps = null;
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String URL ="jdbc:mysql://localhost:3306/mini_project_ip";
		conn = DriverManager.getConnection(URL,"root","root");
		ps = conn.prepareStatement("insert into user_info values(?,?,?)");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		ps.setString(1,username);
		ps.setString(2,email);
		ps.setString(3,password);
		int res = ps.executeUpdate();
		if( res!=0)
			response.sendRedirect("main_signed.html");
			//out.println("your details are saved...");
		else
			out.println("your details are not saved...");
		ps.close();
		conn.close();
	}
	catch(Exception e){out.println(e);}	
		ps.close();
		conn.close();
		
	
	%>
</body>

</html>