<%-- 
    Document   : payment
    Created on : Jul 1, 2019, 2:48:42 AM
    Author     : Arjun(Ajju)
--%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Payment Detail</title>
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
			<li class="active"><a href="#">Book</a></li>
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
    session.setAttribute("flid",null);
    session.setAttribute("ffare",null);
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
		<h2>PAYMENT DETAIL</h2>
		<div class="det" >
			<label for="c-name" >Card Name:</label>
			<select  name="c1" id="c-name" required >
                                <option></option>
				<option value="rupay">RUPAY</option>
				<option value="visa">VISA</option>
				<option value="master+card">MASTER CARD</option>
			</select>
		</div>
		<div class="det" >
			<label for="c-num" >Card Number:</label>
			<input type="text" name="c2" id="c-num" maxlength="16" placeholder="1234 5678 9012 3456" required />
		</div>
		<div class="det" >
			<label for="e-m" >Expiry Month:</label>
			<select name="m1" id="e-m" required >
                                <option></option>
				<option value="01">01</option>
				<option value="02">02</option>
				<option value="03">03</option>
				<option value="04">04</option>
				<option value="05">05</option>
				<option value="06">06</option>
				<option value="07">07</option>
				<option value="08">08</option>
				<option value="09">09</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
			</select>
		</div>
		<div class="det" >
			<label for="year" >Expiry Year:</label>
			<select name="y1" id="year" required >
                                <option></option>
				<option value="2019">2019</option>
				<option value="2020">2020</option>
				<option value="2021">2021</option>
				<option value="2022">2022</option>
				<option value="2023">2023</option>
				<option value="2024">2024</option>
				<option value="2025">2025</option>
				<option value="2026">2026</option>
				<option value="2027">2027</option>
				<option value="2028">2028</option>
				<option value="2029">2029</option>
				<option value="2030">2030</option>
			</select>
		</div>
		<div class="det" >
			<label for="phon" >Phone Number:</label>
			<input type="text" name="t5" id="phon" maxlength="10" placeholder="Phone Number" required />
		</div>
		<div class="det" >
			<label for="cv">CVV:</label>
			<input type="password" maxlength="3" name="t6" id="cv" placeholder="CVV number" required />
		</div>
		<div class="det">
			<label for="fulln" >Name on Card:</label>
			<input type="text" name="t7" id="fulln" placeholder="Full Name" required />
		</div>
                <%
                Object ws=session.getAttribute("flid");
                Object was=session.getAttribute("ffare");
%>                
		<div class="btun">
			<input type="submit" class="btn1" value="Pay<%out.println(" "+was+" for flight ID "+ws);%>" name="b1" />
		</div>
	</form>
</div>
     <%
     if(request.getParameter("b1")!=null){
          String cardname=request.getParameter("c1");
          String cardnum=request.getParameter("c2");
          String expm=request.getParameter("m1");
          String expy=request.getParameter("y1");
          String phone=request.getParameter("t5");
          String cvv=request.getParameter("t6");
          String name=request.getParameter("t7");
          
            Connection con=null;
		Statement st;
                
		try{
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
		
		st=con.createStatement();
		
		String sql="INSERT INTO `payment`(`cardName`, `cardNumber`, `expiryMonth`, `expiryYear`, `phoneNumber`, `cvv`, `nameOnCard`) VALUES ('"+cardname+"','"+cardnum+"','"+expm+"','"+expy+"','"+phone+"','"+cvv+"','"+name+"')";
		int res=st.executeUpdate(sql);
		if(res!=0){%>
                
                <div class="alert alert-success">Payment Successfully done</div>
                
			<%
                         session.setAttribute("flid",null);
                         session.setAttribute("ffare",null);
			}
                else{
			out.println("There is something wrong!");}


		}catch(Exception e)
		{
			out.println(e.toString());
		}
     }
     
     %>

</body>
</html>