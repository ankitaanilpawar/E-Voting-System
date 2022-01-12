<%@ page language="java" import="java.sql.*"%> 
<html>
<head>
<style>
.button{background-color:green;color:white;padding:14px 20px;margin:8px 0;width:20%;display:inline-block;font-size=50;
border-radius:0px;box-shadow:0  8px  #999;}

.button:active{background-color:blue;
	      box-shadow:0  8px  #666;
	      transform:translateY(4px);}

.button1{background-color:red;color:white;padding:14px 20px;margin:8px 0;width:20%;display:inline-block;font-size=50; 
border-radius:0px;box-shadow:0  5px  #999;font-family:rockwell;}

.button1:active{background-color:blue;
	      box-shadow:0  5px  #666;
	      transform:translateY(4px);font-family:rockwell;}
.button2{background-color:midnightblue;color:white;padding:14px 20px;margin:8px 0;width:20%;display:inline-block;font-size=50; 
border-radius:0px;box-shadow:0  5px  #999;font-family:rockwell;}

.button2:active{background-color:blue;
	      box-shadow:0  5px  #666;
	      transform:translateY(4px);font-family:rockwell;}

d{font-family:rockwell ;}
th{font-family:rockwell ;color:red;}
td{font-family:rockwell ;text-align:center;}
r{color:#050505fb;font-style:bold;font-family:rockwell ;>
</style>
<body text="midnightblue">

<form  >

<br>

<% try {
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery( "Select *from Vote");
%>

<center>

<table align='center' cellspacing=1 bordercolor=black cellpadding=10 border='1' cellpadding='0' width='50%' bgcolor="white">
<a href="AdminHome.html"><img src="69524(1).png" height="7%"  width="5%" align="right"></a><br><br><br>
<center><img src="l.png" height="15%"  width="8%"></center>
<d><center><h2><r>Report : Result Voting Details</r></h2></center></d>
<r><%= (new java.util.Date()).toLocaleString() %></r><hr>
<tr bgcolor="lightblue" >
<th><font size=3 color=black>Voter's Username</th>
<th><font size=3 color=black>Submitted Vote</th>
</tr>

<%
while(rs.next())
{
out.println("</td><td>"+rs.getString(1));
out.println("</td><td>"+rs.getString(2));

out.println("</td></tr>");

}
	
		}catch (SQLException e) {
			out.println(e);
		}
		catch (Exception e) {
			out.println(e);
		}
	

  %>
</table>
  <br>
<a href="AdminHome.html">GO BACK</a>
 </body>
</html>

