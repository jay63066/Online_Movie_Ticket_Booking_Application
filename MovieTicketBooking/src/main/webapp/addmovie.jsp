<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.util.*"%>
<%@ include file="connectdb.jsp"%>
<%@page	import="java.util.*"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Add Movies page</title>   
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
				<tr><td><a href="adminmain.jsp">Admin</a></td></tr>
                                <tr>
									<td><a href="adminlogin.jsp">Admin Login</a></td>
								</tr>
								<%
									if(admin!=null){%>
										<tr><td><a href="addmovie.jsp">Add Movies</a></td></tr>
										<tr><td><a href="removemovie.jsp">Remove Movies</a></td></tr>
									<%}
								%>
								<tr><td><a href="movieschedule.jsp">Movie Schedule</a></td></tr>
                                <tr><td><a href="logout.jsp">Log Out</a></td></tr>
                        </table></td>
                        <% if(admin!=null){%>
                                <td id="databar">
                     <h4><span style="color:white">Admin </span></h4>
                     <center><p>Add Movie</p></center>
                     <table cellpadding="25" width="587">
                         <tr><td>
                          <form action="addmovieProcess.jsp" method="post">                 
            <label for="name"><br />
              Movie Name :<br/><br/>
            </label>
            <input name="mname" type="text" id="mname"/>
            <br/>
            <label for="dir"><br />
              Director :<br/><br/>
            </label>
            <input name="dir" type="password" id="dir"/>
            
            <label for="rdate"><br /><br/>
              Release Date  :<br/><br/>
            </label>
              <input type="rdate" id="email" name="rdate" />
               <br/>
               
             <label for="casts"><br /><br/>
              Casts :<br/><br/>
            </label>
              <input type="text" id="casts" name="casts" />
             
                <br/>
                <br/>
               
             <label for="des"><br /><br/>
              Description :<br/><br/>
            </label>
              <input type="text" id="des" name="des" />
              
              <br/>
               
             <label for="pos"><br /><br/>
              Poster link :<br/><br/>
            </label>
              <input type="text" id="pos" name="pos" />
             
             <br/>
               
             <label for="duration"><br /><br/>
              Duration :<br/><br/>
            </label>
              <input type="text" id="duration" name="duration" />
               
               <br/>
               
             <label for="trailer"><br /><br/>
              Trailer link :<br/><br/>
            </label>
              <input type="text" id="trailer" name="trailer" />
             
             <br/>
               
             <label for="cat"><br /><br/>
              Category :<br/><br/>
            </label>
              <input type="text" id="cat" name="cat" />
             
                <br/>
                <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Add the movie"  />
               <p>&nbsp;</p>
          </form>
           </td></tr>   
                      </table>
                      <%}else{ %>
               <td id="databar">
               		<h4>Please Login as Admin to Add movies</h4>
               </td>
               	
               <% }%>
                 </td> </tr>
                </table></td></tr></table>            
</body>
</html>