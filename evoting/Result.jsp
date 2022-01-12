<%@ page language="java" import="java.sql.*" %> 
	<html>
	<head>
		<style>
			.H1 {
			  color: white;
			  font-family: 'Times New Roman', Times, serif;
			}
		  </style>
		  <style>
			* {
			  box-sizing: border-box;
			}
			
			body {
			  font-family: 'Rockwell';
			}
			
			/* Float four columns side by side */
			.column {
			  float: right;
			  width: 25%;
			  padding: 20px 30px;
			
			}
			
			/* Remove extra left and right margins, due to padding */
			.row {margin: 0 0px;}
			
			/* Clear floats after the columns */
			.row:after {
			  content: "";
			  display: table;
			  clear: both;
			  padding: auto;
			}
			
			/* Responsive columns */
			@media screen and (max-width: 450px) {
			  .column {
				width: 100%;
				display: block;
				margin-bottom: 10px;
			  }
			}
			/* Style the counter cards */
			.card {
			  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
			  padding: 5px;
			  text-align: center;
			  background-color: #f1f1f1;
			}
			</style>
			<style>
				.footer {
				   left: 0;
				   bottom: 0;
				   width: 100%;
				   height:fit-content;;
				  
				   text-align: center;
				  
				}
				</style>
	</head>
	<body >
		<div class="head">
			<header">
				  <table  width=100% bgcolor="#0d0731" Cellpadding=10 cellpadding=40>
					<tr>
					  <td><Center><img src="l.png" width="120" height="100">
					   </td>
				   <td>
					 <H1><b><p class="H1"><BR>ZEAL INSTITUE OF MANAGEMENT AND COMPUTER APPLICATIONS</p></H1></b></center></td>
				   </tr></table>
			</header><br>
			
			<center>
				
				<img src= "d4.jpg" height="15%"><br>
				<h1>Election Result</h1>
				
			</center>
	<form action="">
		<table align='center' cellspacing=1 bordercolor=black cellpadding=10 border='1' cellpadding='0' width='30%' bgcolor="white">
			<tr bgcolor="lightblue">
				<th><font size=3 color=black>Contesting candidate</th>
				<th><font size=3 color=black>Total Votes</th>
			</tr>
	<%	
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");	
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");	
		Statement st=con.createStatement();
		
		String QUERY1="select VOTE, COUNT(*) FROM VOTE GROUP BY VOTE "; 
		ResultSet rs= st.executeQuery(QUERY1); 
		while(rs.next())
		{
		%>
			<tr>
				<td><%=rs.getString("VOTE")%></td>
				<td><%=rs.getString("COUNT(*)")%></td>
			</tr>
		<%
		}
		}
		catch (SQLException e) {
			out.println(e);
		}
		catch (Exception e) {
			out.println(e);
		}
  			%>
		</table><Br><br><br>
		<center><a href="Home.html">GO BACK</a></center><br><hr>	
	</form>
	<div class="footer">
		<br>
		<p>Copyrights &#169 Reserved</p>
	  </div>
	</body>
	</html>
