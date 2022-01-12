<script>
<%@ page language="java" import="java.sql.*"%> 
<html>
<head>
</head>
<body>
<%!
 int flag=0;
 %>
<%
String N=request.getParameter("fname");
String G=request.getParameter("phone");
String M=request.getParameter("course");
String A=request.getParameter("email");
String E=request.getParameter("city");
try{
String QUERY = "INSERT INTO students " +
    " VALUES (C_id.NEXTVAL," +
    " 'N', 'G', 'M','A','E')";

// load oracle driver
Class.forName("oracle.jdbc.driver.OracleDriver");


Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
out.println("connection sucessful");

PreparedStatement ps = con.prepareStatement(QUERY,
    new String[] {
        "C_id"
    });

// local variable to hold auto generated student id
Long C_id = null;

// execute the insert statement, if success get the primary key value
if (ps.executeUpdate() > 0) {

    // getGeneratedKeys() returns result set of keys that were auto
    // generated
    // in our case student_id column
    ResultSet generatedKeys = ps.getGeneratedKeys();

    // if resultset has data, get the primary key value
    // of last inserted record
    if (null != generatedKeys && generatedKeys.next()) {

        // voila! we got student id which was generated from sequence
        studentId = generatedKeys.getLong(1);
    }
}
}
catch (Exception e) 
{
	out.println(e); 
}

%>
</body>
</html>
</script>