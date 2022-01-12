<%@ page language="java" import="java.sql.*"%> 
<html>
<head>
</head>
<body>
<%
	String uname = request.getParameter("usrnm");
 	String pass =request.getParameter("psw");
	String u="";
	String p="";
        	Class.forName("oracle.jdbc.driver.OracleDriver");
			out.println("Driver loaded"); 
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			out.println("connection sucessful");
            Statement  st =con.createStatement();
            ResultSet rs;
			rs=st.executeQuery("Select * from A_Admin where A_USER='"+uname+"' and A_PASS='"+pass+"'");
			if(rs.next())
			{			
			out.println("Your Login is successful");
			request.setAttribute("alertMsg","Your Login is successful");
			response.sendRedirect("AdminHome.html"); 
	     	}
			else 
			{ 
			out.println("Login failed");
			response.sendRedirect("Admin.html");
			}
%>
</body>
</html>