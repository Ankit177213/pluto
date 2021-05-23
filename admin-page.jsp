<%-- 
    Document   : admin-page
    Created on : Jul 1, 2019, 3:07:28 AM
    Author     : Arjun(Ajju)
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<link href="https://fonts.googleapis.com/css?family=Pacifico|Exo+2|Handlee|Bitter|Lobster+Two&display=swap" rel="stylesheet">
		<title>Insert Flight</title>
		<style>
		.body2 {
			background-image: url("f1.jpg");}
		.ba{
			background-color: white;
			border-radius: 27px;
			margin: 90px auto 40px auto;
			text-align: center;
			width: 700px;
			padding: 50px 50px 40px 50px;}
		.de {
			margin-bottom: 23px;}
		h2.h1 {
			height: 76px;
			font-family: 'exo 2';
			cursor: default;
			color: white;
			background-color: teal;
			padding: 20px 0px 20px 0px;
			margin: 0px auto 25px auto;
			font-size: 30px;
			border: 2px solid teal;
			border-radius: 10px;
			text-align: center;}
		h2.h1:hover {
			font-size: 33px;
			text-shadow: 3px 2px 4px lightgrey;}
		label.l {
			letter-spacing: 0.13em;
			font-weight: bold;
			width: 240px;
			font-size: 20px;
			font-family: 'exo 2';
			float: left;
                        clear: left;
			padding: 8px 30px 12px 0px;
			text-align: right;}
		#butn:hover {
			border: 1px solid #000000;
			background-color: #009dff;}
		label.l+input:focus,label.l+select:focus {
			outline: none;
			border: 1px solid #004dff;
			background-color: #e8e8e8;}
		label.l+input:hover,label.l+select:hover {
			background-color: #c8c8c8;}
		label.l+input,label.l+select {
			width: 230px;
			border-radius: 18px;
			font-size: 15px;
			border: 1px solid grey;
			padding: 8px;}
		#flid,#fr {
			height: 42px;}
		label.l+select {
			width: 234px;
			height: 40.5px;}
		#butn {
			border: 1px solid #004dff;
			border-radius: 27px;
			font-size: 17px;
			padding: 8px;
			letter-spacing: 0.2em;
			font-weight: bold;
			background-color: #004dff;
			width: 400px;
			margin: 10px auto 10px auto;
			color: white;}
		</style>
	</head>
	<body class="body2" >
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
		<div class="ba">
			<form action="" method="post" >
			<h2 class="h1">Flight Details</h2>
				<div class="de" >
					<label class="l" for="flid">Flight ID:</label>
					<input type="text" name="n1" id="flid" maxlength="4" required >
				</div>
				<div class="de" >
					<label class="l" for="from">Flying From:</label>
					<select name="n2" id="from" required >
					<option></option>
                                        <option value="allahabad" >Allahabad</option>
					<option value="assam" >Assam</option>
					<option value="bengaluru" >Bengaluru</option>
					<option value="chennai" >Chennai</option>
					<option value="delhi" >Delhi</option>
					<option value="gorakhpur" >Gorakhpur</option>
					<option value="gurugram" >Gurugram</option>
					<option value="allahabad" >Kanpur</option>
					<option value="kolkata" >Kolkata</option>
					<option value="mumbai" >Mumbai</option>
					<option value="thiruvananthapuram" >Thiruvananthapuram</option>
					<option value="vishakhapatnam" >Vishakhapatnam</option>
					</select>
				</div>
				<div class="de" >
					<label for="dattr" class="l" >On Date:</label>
					<input type="date" name="n3" id="dattr" required >
				</div>
				<div class="de" >
					<label for="arrival" class="l" >Arriving At:</label>
					<input type="time" name="n4" id="arrival" required >
				</div>
				<div class="de" >
					<label for="dapart" class="l">Departing At:</label>
					<input type="time" name="n5" id="depart" required >
				</div>
				<div class="de" >
					<label for="to" class="l">Flying To:</label>
					<select name="n6" id="to" required >
                                        <option></option>
					<option value="allahabad" >Allahabad</option>
					<option value="assam" >Assam</option>
					<option value="bengaluru" >Bengaluru</option>
					<option value="chennai" >Chennai</option>
					<option value="delhi" >Delhi</option>
					<option value="gorakhpur" >Gorakhpur</option>
					<option value="gurugram" >Gurugram</option>
					<option value="allahabad" >Kanpur</option>
					<option value="kolkata" >Kolkata</option>
					<option value="mumbai" >Mumbai</option>
					<option value="thiruvananthapuram" >Thiruvananthapuram</option>
					<option value="vishakhapatnam" >Vishakhapatnam</option>
					</select>
				</div>
                                <div class="de" >
					<label class="l" for="seat">Vacant Seats:</label>
					<input type="text" name="n7" id="seat" required >
				</div>
                                <div class="de" >
					<label class="l" for="eseat">Economy Seats:</label>
					<input type="text" name="n8" id="eseat" required >
				</div>
                                <div class="de" >
					<label class="l" for="bseat">Business Seats:</label>
					<input type="text" name="n9" id="bseat" required >
				</div>
                                <div class="de" >
					<label class="l" for="efr">Economy Fare:</label>
					<input type="text" name="nn" id="efr" required >
				</div>
                                <div class="de" >
					<label class="l" for="bfr">Business Fare:</label>
					<input type="text" name="nm" id="bfr" required >
				</div>
				<div class="up">
					<input type="submit" value="Insert Flight" id="butn" name="u1" >
				</div>
<%
     if(request.getParameter("u1")!=null){
          String a=request.getParameter("n1");
          String b=request.getParameter("n2");
          String c=request.getParameter("n3");
          String d=request.getParameter("n4");
          String e=request.getParameter("n5");
          String f=request.getParameter("n6");
          String g=request.getParameter("n7");
          String h=request.getParameter("n8");
          String i=request.getParameter("n9");
          String j=request.getParameter("nn");
          String k=request.getParameter("nm");
          
            Connection con=null;
		Statement st;
                
		try{
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
		
		st=con.createStatement();
		
		String sql="INSERT INTO `status`(`fid`, `fromf`, `date`, `arr`, `dept`, `tof`, `seats`, `ecoset`, `busset`,`ecosetf`,`bussetf` ) VALUES('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"')";
		int res=st.executeUpdate(sql);
		if(res!=0){%>
                
                <div class="alert alert-success">Status Updated</div>
                
			<%
                            }
			
                else{
			out.println("Record Not Inserted");}


		}catch(Exception ee)
		{
			out.println(ee.toString());
		}
     }
     
     %>
			</form>
		</div>

        </body>
</html>