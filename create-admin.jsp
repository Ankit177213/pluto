<%-- 
    Document   : create-admin
    Created on : Jul 1, 2019, 3:02:27 AM
    Author     : Arjun(Ajju)
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Create a new Account</title>
	<link href="https://fonts.googleapis.com/css?family=Exo+2|Bitter|Handlee&display=swap" rel="stylesheet">
	<style>
.body5 {
	letter-spacing: 0.25em;
	height: 800px;
	margin: 0px;
	font-family: 'Handlee';
	background-image: -webkit-linear-gradient(#66cccc, #336666);
	/*background-image: url("tile.png");*/}
.nav-div {
    position: fixed;
    top: 0px;
    width: 100%;
    margin: 0px;
    padding: 0px;}
.main {
	background-color: #ffffff;
	width: 700px;
	margin: 90px auto 20px auto;
	padding: 0px 0px 30px 0px;
        border-radius: 25px;
	box-shadow: 1px 1px 13px 5px #5d5d5d;}
h2.ank {
	/*text-shadow: 1px 1px 3px white;
	background-image: url("login.png");*/
	font-family: 'exo 2';
	background-color: #336666;
	color: #ffffff;
	padding: 25px 0px 30px 0px;
	margin: 0px auto 25px auto;
	font-size: 30px;
        border-top-left-radius: 24px;
        border-top-right-radius: 24px;
	border: 0px solid black;
	text-align: center;}
label {
	width: 300px;
	font-size: 20px;
	float: left;
	padding: 10px 40px 10px 0px;
	text-align: right;}
div.name {
	margin-bottom: 23px;}
.button {
	font-weight: bold;
	background-color: #004dff;
	width: 400px;
	color: white;
	margin: 10px auto 10px auto;}
.b {
	text-align: center;}
input {
	width: 220px;
	font-family: Handlee;
	font-size: 18px;
	border: 1px dotted grey;
	border-radius: 7px;
	padding: 8px;}
input[type="submit"]:hover {
	border: 1px solid #0056ff;
	background-color: #007dff;}
input:hover {
	border: 1px solid #0056ff;
	background-color:a8a8a8;}
input:focus {
	border: 1px solid #0056ff;
	background-color: #d8d8d8;}
.new {
	margin: 20px auto 0px auto;
	text-align: center;}
a {
	text-decoration: none;}
a:hover {
	color: black;
	text-decoration: underline;}
	</style>
</head>
<body class="body5">

	<div class="nav-div" >
	       <jsp:include page="navigation.jsp" />
	</div>

	<div class="main">
		<h2 class="ank">Register in Pluto</h2>
		<form method="post">
			<div class="name">
				<label for="naam">Name:</label>
				<input type="text" name="n1" id="naam" placeholder="Name here.." required/>
			</div>
			<div class="name">
				<label for="umar">DOB:</label>
				<input type="date" name="a1" id="umar" required/>
			</div>
			<div class="name">
				<label for="mail">Email:</label>
				<input type="text" name="e1" id="mail" placeholder="Email ID here.." required/>
			</div>
			<div class="name">
				<label for="pass">Create Password:</label>
				<input type="text" name="n2" id="pass" placeholder="Enter new password" required/>
			</div>
			<div class="b">
				<input type="submit" value="Register" name="b1" class="button"/>
			</div>
		</form>
		<div class="new">
				<a href="login-page.jsp">Login</a>
			</div>
	</div>
         <%
     if(request.getParameter("b1")!=null){
          String username=request.getParameter("n1");
          String dob=request.getParameter("a1");
          String email=request.getParameter("e1");
          String password=request.getParameter("n2");
          
            Connection con=null;
		Statement st;
                
		try{
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
		
		st=con.createStatement();
		
		String sql="INSERT INTO `admin`(`name`, `dob`, `email`, `password`) VALUES('"+username+"','"+dob+"','"+email+"','"+password+"')";
		int res=st.executeUpdate(sql);
		if(res!=0){%>
                
                <div class="alert alert-success">Signup Successfull</div>
                
			<%
                            }
			
                else{
			out.println("Record Not Inserted");}


		}catch(Exception e)
		{
			out.println(e.toString());
		}
     }
     
     %>


</body>
</html>