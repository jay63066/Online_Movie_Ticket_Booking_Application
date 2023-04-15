<title>Customer Authentication Page</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connectdb.jsp"%>
<%@page	import="java.util.*"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%      String email = request.getParameter("useremail");
	String pass = request.getParameter("pass");
        application.setAttribute("custemail", email);
	try {

		String sql = "SELECT * FROM user where email='" + email+ "' and password='" + pass + "' ";
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		if (rs.next()==true)
		{
			session.setAttribute("user", email);
			session.setAttribute("admin",null);
			response.sendRedirect("customermain.jsp");

		}
		 else 
		{

			response.sendRedirect("wronglogin.html");
		}

	} 
	catch (Exception e)
	{
		out.print(e);
		e.printStackTrace();
	}
%>
