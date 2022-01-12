
	<%@ page language="java" import="java.sql.*" %> 
	<html>
	<head>
	</head>
	<body onload="myfunction()">
		<form action="Shedulenew.html">
		<script>
			function myfunction()
			{
			alert("Contesting candidate information is sucessfully deleted");
			return window.location.href="AdminHome.html";
			}
			</script>
	<%
	
	try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        out.println("Driver loaded"); 
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        out.println("connection sucessful");
        Statement  st =con.createStatement();
        ResultSet rs;
        rs=st.executeQuery("Delete from VOTE");
        out.println("Contesting candidates data is sucessfully deleted");
        response.sendRedirect("Shedulenew.html"); 
        st.close();
	    con.close(); 
	    }
	catch (Exception e) 
	{
		out.println(e); 
    }
	
	%>
	
	</form>
	</body>
	</html>
