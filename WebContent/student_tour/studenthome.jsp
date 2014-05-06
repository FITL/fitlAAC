<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Home</title>
</head>
<body bgcolor="#57068c">
<% System.out.println("JSP: Inside Student Home "); %>
<%
	String netID = request.getParameter("NetID");
	session.setAttribute("UserName", request.getParameter("NetID"));%>
<h1 align="center"><font color="white">Welcome to <%= session.getAttribute( "UserName" ) %></font></h1>
<h2 align="center"><font color="white">START Tour</h2>
<a href="student_tour/logout.jsp"><font color="white">Logout</font></a>
<form method="post" action="start">	
		<center><table>
			<tr><td><font face="verdana,arial" size=-1>&nbsp;</td><td><font face="verdana,arial" size=-1><input type="submit" value="Next"></font></td></tr>
		</table></center>
</form>

</html>