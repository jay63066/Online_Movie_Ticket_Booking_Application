<title>Customer Registration Process</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connectdb.jsp"%>
<%@page	import="java.util.*"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%

	String mname = request.getParameter("mname");
	String dir = request.getParameter("dir");
        String rdate= request.getParameter("rdate");
        String casts=request.getParameter("casts");
        String des = request.getParameter("des");
        String pos = request.getParameter("pos");
        String duration = request.getParameter("duration");
        String trailer = request.getParameter("trailer");
        int cat = Integer.parseInt(request.getParameter("cat"));
        
	try {
           
              Statement stmt = connection.createStatement();
                String sql1 = "insert into movie(name,director,releasedate,casts,description,poster,duration,trailerlink,category) values('"
              +mname+"','"+dir+"','"+rdate+"','"+casts+"','"+des+"','"+pos+"','"+duration+"','"+trailer+"','"+cat+"')";
				//st.executeUpdate(strQuery2);
		stmt.executeUpdate(sql1);
                %>
         
                 <pre>Movie Added Successfully</pre>
                <p><a href="addmovie.jsp">Back</a><br />
<%
	} 
	catch (Exception e)
	{
		out.print(e);
		e.printStackTrace();
	}
%>
