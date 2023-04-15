<title>Customer Registration Process</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connectdb.jsp"%>
<%@page	import="java.util.*"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%

	String customername = request.getParameter("userid");
	String password = request.getParameter("password");
        String email= request.getParameter("email");
        String dob=request.getParameter("dob");
        String gender = request.getParameter("gender");
       
        
	try {
           
              Statement stmt = connection.createStatement();
                String sql1 = "insert into user(name,email,password,dob,gender) values('"+customername+"','"+email+"','"+password+"','"+dob+"','"+gender+"')";
				//st.executeUpdate(strQuery2);
		stmt.executeUpdate(sql1);
                %>
         
                 <pre>Customer Registered Successfully</pre>
                <p><a href="customerlogin.jsp">Back</a><br />
<%
	} 
	catch (Exception e)
	{
		out.print(e);
		e.printStackTrace();
	}
%>
