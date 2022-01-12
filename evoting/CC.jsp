
	<%@ page language="java" import="java.sql.*" %> 
	<html>
	<head>
	</head>
	<body onload="myfunction()">
		<form action="CC.html">
		<script>
			function myfunction()
			{
			alert("Contesting candidate is scucessfully regsistered");
			return window.location.href="AdminHome.html";
			}
			</script>
	<%
	String N=request.getParameter("fname");
	String G=request.getParameter("phone");
	String M=request.getParameter("course");
	String A=request.getParameter("email");
	String E=request.getParameter("city");
	try{
	String QUERY = "INSERT INTO Contesting_candidate" +
		" VALUES (C_id.NEXTVAL," +
		" '"+N+"', '"+G+"', '"+M+"','"+A+"','"+E+"')";
	
	// load oracle driver
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	
	
	PreparedStatement ps = con.prepareStatement(QUERY,
		new String[] {
			"C_id"
		});
	
	// local variable to hold auto generated student id
	Long Cid = null;
	
	// execute the insert statement, if success get the primary key value
	if (ps.executeUpdate() > 0) {
	
		// getGeneratedKeys() returns result set of keys that were auto
		// generated
		// in our case student_id column
		ResultSet generatedKeys = ps.getGeneratedKeys();
	
		out.println("sucessful");
		if (null != generatedKeys && generatedKeys.next()) {
	
			// voila! we got student id which was generated from sequence
			Cid = generatedKeys.getLong(1);
			
		}
	}
	
	%>
	<% ps.close();
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
