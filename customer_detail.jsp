<%-- 
    Document   : customer_detail
    Created on : Jul 1, 2019, 11:06:50 PM
    Author     : Arjun(Ajju)
--%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Customer Detail</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Pacifico|Exo+2|Handlee|Bitter|Lobster+Two&display=swap" rel="stylesheet">
	<style type="text/css">
.form-box {
	background-color: #ffffff;
	width: 600px;
	font-family: handlee;
	margin: 90px auto 90px auto;
	padding: 50px 50px 40px 50px;
	border-radius: 10px;
	box-shadow: 0px 0px 15px 5px #adadad;}
h2 {
	font-family: 'exo 2';
	background-color: teal;
	color: white;
	cursor: default;
	padding: 20px 0px 20px 0px;
	margin: 0px auto 25px auto;
	font-size: 30px;
	border: 0px solid black;
	border-radius: 10px;
	text-align: center;}
.det>select,.det>input {
	width: 235px;
	box-shadow: 1px 1px 2px 1px #adadad inset;
	border-radius: 7px;
	font-family: handlee;
	border: 1px solid grey;
	font-size: 20px;
	padding: 8px;}
.det>select:hover,.det>input:hover{
	background-color: #c8c8c8;}
.det>select:focus,.det>input:focus{
	border: 1px solid blue;
	outline: none;
	background-color: #e8e8e8;}
label {
	width: 220px;
	clear: left;
	font-size: 20px;
	float: left;
	padding: 10px 40px 10px 0px;
	text-align: right;}
.btn1 {
	margin: 20px auto 10px auto;
	padding: 8px;
	font-size: 20px;
        background-color: teal;
	border: 0px solid black;
	border-radius: 19px;
	width: 350px;
        color: white;}
.btun {
	text-align: center;}
div.det {
	margin-bottom: 23px;}
.body2 {
    background-image: url("css/f1.jpg");
    background-attachment: fixed;
}
	</style>

</head>
<body class="body2">
    
<nav class="navbar navbar-default background-color:#e7e7e7">
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
        response.sendRedirect("logpay.jsp");
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
    
<div class="form-box">
	<form action="" method="post" >
		<h2>PASSENGERS DETAIL</h2>
                
		<div class="det" >
			<label for="f-n">First Name:</label>
			<input type="text" class="form-control" id="f-n" name="t1" placeholder="Mr/Mrs/Ms... First Name"/>
		</div>
		<div class="det" >
			<label for="l-n">Last Name:</label>
			<input type="text" class="form-control" id="l-n" name="t2" placeholder="Last Name"/>
		</div>
		<div class="det" >
			<label for="mail">E-Mail:</label>
			<input type="text" class="form-control" id="mail" name="t3" placeholder="Example@gmail.com"/>
		</div>
		<div class="det" >
			<label for="umar">Age:</label>
			<input type="text" class="form-control" id="umar" name="t4" maxlength="3" placeholder="Enter Your Age"/>
		</div>
		<div class="det" >
			<label for="no">Phone Number:</label>
			<input type="text" class="form-control" id="no" name="t5" maxlength="10" placeholder="Phone Number"/>
		</div>
		<div class="det" >
                    <label for="addr">Address Line1:</label>
			<input type="text" class="form-control" id="addr" name="t6" placeholder="Address"/>
		</div>
                <div class="det" >
                    <label for="addr2">Address Line2:</label>
			<input type="text" class="form-control" id="addr2" name="t7" placeholder="Address"/>
		</div>
                <div class="det" >
                    <label for="addrp">PIN Code:</label>
			<input type="text" class="form-control" id="addrp" name="t8" placeholder="PIN Code" maxlength="6" >
		</div>
		<div class="btun">
			<input type="submit" class="btn1" value="save" name="b1"/>
                </div>
	</form>
                       
</div>
                         <%
     if(request.getParameter("b1")!=null){
          String firstname=request.getParameter("t1");
          String lastname=request.getParameter("t2");
          String email=request.getParameter("t3");
          String age=request.getParameter("t4");
          String phone=request.getParameter("t5");
          String add1=request.getParameter("t6");
          String add2=request.getParameter("t7");
          String addp=request.getParameter("t8");
        
          
            Connection con=null;
		Statement st;
                
		try{
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
		
		st=con.createStatement();
		
		String sql="INSERT INTO `customerdetail`(`firstName`, `lastName`, `email`, `age`, `phone`, `add1`, `add2`, `pin`) VALUES('"+firstname+"','"+lastname+"','"+email+"','"+age+"','"+phone+"','"+add1+"','"+add2+"','"+addp+"')";
		int res=st.executeUpdate(sql);
		if(res!=0){%>
                
                <div class="alert alert-success">Details Saved</div>
                
			<%
                            
                            session.setAttribute("cdetail", firstname);
                            response.sendRedirect("payment.jsp");
                            }
			
                else{
			out.println("something went wrong!");}


		}catch(Exception e)
		{
			out.println(e.toString());
		}
     }
     
     %>
}
</body>
</html>