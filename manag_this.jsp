<%-- 
    Document   : manag_this
    Created on : Jul 2, 2019, 10:25:46 PM
    Author     : Arjun(Ajju)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>What to Do!</title>
    </head>
    <body style="height:700px;background-attachment: fixed;background-image: -webkit-linear-gradient(pink, lightblue);">
        <nav class="navbar navbar-default background-color:#e7e7e7" >
	<div class="container-fluid">
		<div class="navbar-header">
		<a class="navbar-brand" href="index.jsp">pluto.com</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="payment.jsp">Book</a></li>
			<li class="active"><a href="#">Offers</a></li>
			<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Manager<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="mlogin.jsp">Manager Login</a></li>
					<li><a href="#">Page 2</a></li>
					<li><a href="#">Page 3</a></li>
				</ul>
			</li>
			<li class="active"><a href="#">Contact</a></li> 
			<li class="active"><a href="aboutus.jsp">About us</a></li>
                        <li class="active" style="border-left:1px solid black;border-right:1px solid black;"><a href="" >
<%
    if(session.getAttribute("naam")!=null){
         String un=(String)session.getAttribute("naam");
         out.println("Welcome "+un);
    }
    else
        response.sendRedirect("mlogin.jsp");
%>
                            </a></li>
                </ul>
		<ul class="nav navbar-nav navbar-right">
                    <li ><form ><input type="submit" name="l1" style="font-size: 17px;border: 0px solid black;padding-left: 17px;padding-right: 17px;padding-top:13px;padding-bottom: 13px;border-radius: 10px;" value="Logout" />
<%
if(request.getParameter("l1")!=null){
    session.setAttribute("username",null);
    session.setAttribute("naam",null);
    response.sendRedirect("index.jsp");
}
%>
                        </form></li>
		</ul>
	</div>
</nav>
     <div style="text-align: center;margin-top: 100px;"><div style="text-align: center;margin: 100px;border-radius: 30px;border:2px solid blue;">
             <form><div style="margin: 80px;display: inline;">
                <input type="submit" name="ins-fli" style="margin: 40px;" class="btn btn-primary" value="Insert Flight" ></div><div style="margin: 80px;display: inline;">
                <input type="submit" name="upd-fli" style="margin: 40px;" class="btn btn-primary" value="Update Flight" ></div>
             </form></div></div>
<%
if(request.getParameter("ins-fli")!=null){
            response.sendRedirect("admin-page.jsp");
        }
else if(request.getParameter("upd-fli")!=null){
            response.sendRedirect("upd-fligt.jsp");
        }
%>
    </body>
</html>
