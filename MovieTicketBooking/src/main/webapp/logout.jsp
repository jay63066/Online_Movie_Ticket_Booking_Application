<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Customer Login Page</title>   
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <%--<link href="themes/default/dream.css" rel="stylesheet" type="text/css"/>--%>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/ie6.css" rel="stylesheet" type="text/css" />
        
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
		
		if(user!=null){
			session.setAttribute("user",null);
		}
		else{
			session.setAttribute("admin",null);
		}
		
		
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
        
<%--<img src="Media/icon.png" alt="Cinema World" border="0" style="position:absolute; left: 35%;top:0px; "/>--%>

<table width="100%">
	<tr><td>
		<table><tr><td  valign="top">
			<table id="navigation"  width="170">
								<tr>
									<td><a href="customerlogin.jsp">Customer Login</a></td>
								</tr>
								<tr>
									<td><a href="customerregister.jsp">Customer SignUp</a></td>
								</tr>
								<tr>
									<td><a href="adminlogin.jsp">Admin Login</a></td>
								</tr>
								<%
									if(user!=null){%>
										<tr><td><a href="customermain.jsp">Customer</a></td></tr>
									<%}
								%>
								<tr><td><a href="movieschedule.jsp">Movie Schedule</a></td></tr>
                                <tr><td><a href="logout.jsp">Log Out</a></td></tr>
                        </table></td>
		<td id="databar">
                     <h4><span style="color:white">You have been Successfully Logged out!! Login again to enjoy our services  </span></h4>
                    <h4>If no account , then Click here to <a href="customerregister.jsp">SignUp!!</a></h4> 
                    </td>
	 </tr>
                </table></td></tr></table>

</body>
</html>