<title>Customer Registration Process</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connectdb.jsp"%>
<%@page	import="java.util.*"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%

	String mname =request.getParameter("mname");
	String useremail=(String)application.getAttribute("custemail");
    int count=Integer.parseInt(request.getParameter("ticket_count"));
        
	try {
		String sql = "SELECT * FROM movie where name='" + mname+ "' ";
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		if (rs.next()==true && rs.getInt(12)>count)
		{
			try{
				try{
					int ticket_available=rs.getInt(12);
				ticket_available-=count;
				Statement updstmt = connection.createStatement();
                String sqlupd = "UPDATE movie SET ticket_count='"+ticket_available+"' WHERE mid='"+rs.getInt(1)+"'";
                //System.out.print(mname);
				//st.executeUpdate(strQuery2);
				updstmt.executeUpdate(sqlupd);
				}
				catch(Exception e){
					System.out.println(e+" WHILE UPDATING");
				}
				
				Statement stmt2 = connection.createStatement();
                String sql1 = "insert into orders(mid,useremail,tickets) values('"+rs.getInt(1)+"','"+useremail+"','"+count+"')";
				//st.executeUpdate(strQuery2);
				stmt2.executeUpdate(sql1);
                %>
         
                 <pre>Your ticket is booked!!</pre>
                <p><a href="orders.jsp">View your ticket</a><br />
<% 
			}
			catch(Exception e){
				System.out.println(e+" WHILE INSERTING INTO ORDERS");
			}

			

		}
		 else 
		{
			 %>
			<pre>Sorry your ticket could not be booked. Booking filled!!</pre>
                <p><a href="bookticketmain.jsp">Back</a><br />
<%
		}
           
              

	} 
	catch (Exception e)
	{
		System.out.print(e+" WHILE SELECTING");
		
	}
%>
