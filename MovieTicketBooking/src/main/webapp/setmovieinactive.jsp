<title>Customer Registration Process</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connectdb.jsp"%>
<%@page	import="java.util.*"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%

	int mid = Integer.parseInt(request.getParameter("mid"));
       
	try {
		String sql = "SELECT * FROM movie WHERE mid='" + mid+ "' ";
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		if (rs.next()==true)
		{
			try{
				Statement stmt2 = connection.createStatement();
                String sql1 = "UPDATE movie SET active_status='no' WHERE mid='"+mid+"'";
				//st.executeUpdate(strQuery2);
		stmt2.executeUpdate(sql1);
                %>
         
                 <pre>Movie has been removed from schedule!!</pre>
                <p><a href="removemovie.jsp">Back</a><br />
<% 
			}
			catch(Exception e){
				System.out.println(e);
			}

			

		}
		 else 
		{
			 %>
			<pre>Sorry the movie couldn't be removed. Try again!!</pre>
                <p><a href="removemovie.jsp">Back</a><br />
<%
		}
           
              

	} 
	catch (Exception e)
	{
		System.out.print(e);
		e.printStackTrace();
	}
%>
