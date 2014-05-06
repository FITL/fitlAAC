<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>AAC Logout</title>
</head>
<body bgcolor="#57068c">
<%session.invalidate();%>
<h1><center><font color="white">You have logged out AAC. </font></center></h1>
<font color="white">Please </font><a href="../index.jsp"><b><font color="white">Login</font></b></a>
</body>
</html>