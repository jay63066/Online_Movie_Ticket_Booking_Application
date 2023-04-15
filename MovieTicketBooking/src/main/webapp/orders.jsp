<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.util.*"%>
<%@ include file="connectdb.jsp"%>
<%@page	import="java.util.*"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Orders</title>   
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/ie6.css" rel="stylesheet" type="text/css" />
        <%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
        <link href="css/dream.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
        <!--
        .style1 {font-size: 36px}
        -->
        </style>
    </head>
<div id="header">
<div class="row-1">
<div class="fleft"><a href="index.jsp">Cinema <span style="color:red">World</span></a></div>
          <ul>    
            <li><a href="index.jsp"><img src="images/icon1-act.gif" alt="Home Page" /></a></li>
            <li><a href="contact-us.html"><img src="images/icon2-act.gif" alt="Gmail" /></a></li>
            <li><a href="about-us.html"><img src="images/icon3-act.gif" alt="About-us" /></a></li>
          </ul>
        </div>          
    </div>
    
     <% String user=(String)session.getAttribute("user");
		String admin= (String) session.getAttribute("admin");
	%>
    
        <body id="page1">
<!-- START PAGE SOURCE -->
<div class="tail-top">
  <div class="tail-bottom">
    <div id="main">
      <div id="header">
        <div class="row-2">
          <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about-us.html">About</a></li>
            <li><a href="articles.html">Articles</a></li>
            <li><a href="contact-us.html">Contacts</a></li>
          </ul>
        </div>
      </div>
         </div>
      </div></div>


<table width="100%">
	<tr><td>
		<table><tr><td  valign="top">
			<table id="navigation"  width="230">
				<tr><td><a href="CustomerMain.jsp">Customer</a></td></tr>
                               <tr>
									<td><a href="customerlogin.jsp">Customer Login</a></td>
								</tr>
								<tr>
									<td><a href="customerregister.jsp">Customer SignUp</a></td>
								</tr>
								<%
									if(user!=null){%>
										<tr><td><a href="customermain.jsp">Customer</a></td></tr>
										<tr><td><a href="bookticketmain.jsp">Book Ticket</a></td></tr>
										<tr><td><a href="orders.jsp">View My Orders</a></td></tr>
									<%}
								%>
								<tr><td><a href="movieschedule.jsp">Movie Schedule</a></td></tr>
                                <tr><td><a href="logout.jsp">Log Out</a></td></tr>
                        </table></td>
                        <% if(user!=null){%>
                                <td id="databar">
                     <h4><span style="color:white">Your Orders </span></h4>
                     
                     <center>
								<p>Orders Details</p>
							</center>
							<table class="center" cellpadding="25" width="1000" border="5">
								<tr>
								<td width="176"><div align="center" class="style21">
											<span class="style23">Order Id </span>
										</div></td>
									<td width="176"><div align="center" class="style21">
											<span class="style23">Movie Name </span>
										</div></td>
										<td width="176"><div align="center" class="style21">
											<span class="style23">Tickets Booked</span>
										</div></td>
									<td width="176"><div align="center" class="style21">
											<span class="style23">Director</span>
										</div></td>
									<td width="176"><div align="center" class="style21">
											<span class="style23">Release Date</span>
										</div></td>
									<td width="176"><div align="center" class="style21">
											<span class="style23">Casts </span>
										</div></td>
									<td width="1000"><div align="center" class="style21">
											<span class="style23">Description </span>
										</div></td>
									<td width="176"><div align="center" class="style21">
											<span class="style23">Duration </span>
										</div></td>
									
									<%
									String a2 = "", b2 = "", c2 = "", e3 = "", i41 = "";
									String  i51, k2,i5;
									
									String catName="NA";
									String useremail= (String) application.getAttribute("custemail");
									try {
										String query = "SELECT * from orders where useremail='"+useremail+"'";
										Statement st = connection.createStatement();
										ResultSet rs = st.executeQuery(query);
										while (rs.next() == true) {
								
											try{
												String queryCat ="SELECT * FROM movie where mid=?";
												PreparedStatement cst=connection.prepareStatement(queryCat);
												cst.setInt(1,rs.getInt(2));
												ResultSet rs2 = cst.executeQuery();
												while(rs2.next()){
													i5 = rs2.getString(2);
													a2 = rs2.getString(3);
													k2 = rs2.getString(4);
													b2 = rs2.getString(5);
													i51 = rs2.getString(6);
													i41 = rs2.getString(8);
													
													%>
													</tr>
													<tr>
														<td><div align="center"><%=rs.getInt(1)%></div></td>
														<td><div align="center"><%=i5%></div></td>
														<td><div align="center"><%=rs.getInt(4)%></div></td>
														<td><div align="center"><%=a2%></div></td>
														<td><div align="center"><%=k2%></div></td>
														<td><div align="center"><%=b2%></div></td>
														<td><div align="center"><%=i51%></div></td>
														<td><div align="center"><%=i41%></div></td>
														<%
												}
											}
											catch(Exception e){
												System.out.println(e+" from category");
											}
									
									}
									connection.close();
									}

									catch (Exception e) {
									out.println(e.getMessage());
									}
									%>
								</tr>
							</table>
                      <%}else{ %>
               <td id="databar">
               		<h4>Please Login to View Your Orders</h4>
               		<h4>If no account , then Click here to <a href="customerregister.jsp">SignUp!!</a></h4> 
               </td>
               	
               <% }%>
                     
                     </td></tr></table>   
                     </td></tr></table>         
</body>
</html>
