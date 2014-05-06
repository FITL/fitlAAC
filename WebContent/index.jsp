<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Student Login</title>
</head>

<body bgcolor="#57068c" >
	<% System.out.println("Inside studentlogin.jsp"); %>
	<center><table cellpadding='2' cellspacing='0' border='0' id='ap_table'>
	<h1><center><font color="white">Welcome Student</font></center></h1>
	<br>
	<br>
	<tr><td bgcolor="#57068c">
		<table cellpadding='0' cellspacing='0' border='0' width='100%'>
		<tr>
			<td bgcolor="#57068c" align=center style="padding:2;padding-bottom:4">
			<b><font size=-1 color="white" face="verdana,arial"><b>Enter your NetID</b></font></th>
	</tr>

	<tr><td bgcolor="white" style="padding:5"><br>
	
	<form method="post" action="slogin">
	
		<input type="hidden" name="user" value="student">
	
		<center><table>
		
			<tr><td><font face="verdana,arial" size=-1>NetID:</td><td><input type="text" name="NetID"></font></td></tr>
			<tr><td><font face="verdana,arial" size=-1>&nbsp;</td><td><font face="verdana,arial" size=-1><input type="submit" value="Enter"></font></td></tr>
			
			<tr><td colspan=2><font face="verdana,arial" size=-1>&nbsp;</td></tr>
		</table></center>

	</form>

</td></tr></table></td></tr></table>
</body>
</html>