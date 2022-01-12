<%@ page language="java" import="java.sql.*"%> 
<html>
<head>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
	body {font-family: 'Rockwell';
	color: rgb(8, 8, 59);}
	* {box-sizing: border-box;}
	
	.input-container {
	  display: -ms-flexbox; /* IE10 */
	  display: flex;
	  width: 100%;
	  margin-bottom: 15px;
	}
	
	.icon {
	  padding: 10px;
	  background: rgb(5, 31, 56);
	  color: white;
	  min-width: 50px;
	  text-align: center;
	}
	
	.input-field {
	  width: 100%;
	  padding: 10px;
	  outline: none;
	  font-family: 'Rockwell';
	}
	
	.input-field:focus {
	  border: 2px solid dodgerblue;
	}
	
	/* Set a style for the submit button */
	.btn {
	  background-color: rgb(5, 31, 56);
	  color: rgb(239, 239, 241);
	  padding: 10px 20px;
	  border: none;
	  cursor: pointer;
	  width: 100%;
	  opacity: 0.9;
	  font-family: 'Rockwell';
	  font-size: 20px;
	}	
	.btn:hover {
		background-color: rgb(31, 177, 87);
	  opacity: 1;
	}
	</style>
	<script>
  
	</script>
<body text="darkblue" bgcolor="#0d0731" >
<form action="Admin.jsp"  method="post" >
<br><br><br>
<center>
<table border="1" cellpadding=20  cellspacing=20  bgcolor="white" WIDTH="40%"><tr><td>
<a href="Home.html"><img src="69524(1).png" align="right" height=40px width=40px ></a><br><br><br>

<center><h2>YOUR VOTE COUNTS</h2></center>
<center><img src="l.png" height=80px width=80px></center><br>
<center><%  String name=(String)session.getAttribute("uname");

out.println("Thank you for voting "  +name);  %></center><br>
<center>Voting Time :<%= (new java.util.Date()).toLocaleString() %></center>
<br><br>
<center><a href="Home.html">GO BACK</a></center>
<br><br>	
</a></td></tr></table>
</center>
</form>
</body>
</html>


