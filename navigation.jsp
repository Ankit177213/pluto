<%-- 
    Document   : navigation
    Created on : 27 Jun, 2019, 10:14:26 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NAV Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
    
    </head>
    <body>
<nav class="navbar navbar-default ">
	<div class="container-fluid">
		<div class="navbar-header">
		<a class="navbar-brand" href="index.jsp" style="color:teal;">pluto.com</a>
		</div>
		<ul class="nav navbar-nav">
			<!--<li class="active"><a href="customer_detail.jsp">Book</a></li>-->
			<li class="active"><a href="newjsp.jsp">Offers</a></li>
			<!--<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Manage<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="manag_this.jsp">Manager Login</a></li>
          
        </ul>
      </li>-->          <li class="active"><a href="manag_this.jsp">Manager</a></li>
			<li class="active"><a href="aboutus.jsp">Contact</a></li> 
			<li class="active"><a href="aboutus.jsp">About us</a></li> 
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="signup-page.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="home.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		</ul>
	</div>
</nav>
    </body>
</html>
