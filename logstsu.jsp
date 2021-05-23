<%-- 
    Document   : logstsu
    Created on : Jul 2, 2019, 12:29:57 PM
    Author     : Arjun(Ajju)
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Login Page</title>
		<link href="https://fonts.googleapis.com/css?family=Pacifico|Exo+2|Handlee|Bitter|Lobster+Two&display=swap" rel="stylesheet">
                <style>
.nav-div {
        position: fixed;
        top: 0px;
        width: 100%;
        margin: 0px;
        padding: 0px;
}
.body5 {
	letter-spacing: 0.25em;
	height: 800px;
	margin: 0px;
	font-family: 'Handlee';
	background-image: -webkit-linear-gradient(#66cccc, #336666);}
.main5 {
	background-color: white;
	width: 500px;
	margin: 100px auto 20px auto;
	padding: 50px 50px 40px 50px;
	border-radius: 10px;
	box-shadow: 5px 5px 15px 5px #adadad;}
h2.login {
	/*text-shadow: 1px 1px 3px white;
	background-image: url("login.png");*/
	font-family: 'exo 2';
	background-color: #336666;
	color: #ffffff;
	padding: 20px 0px 20px 0px;
	margin: 0px auto 25px auto;
	font-size: 30px;
	border: 0px solid black;
	border-radius: 10px;
	text-align: center;}
label.login {
	width: 150px;
	font-size: 20px;
	float: left;
	padding: 10px 40px 10px 0px;
	text-align: right;}
div.name {
	margin-bottom: 23px;}
#button {
	font-weight: bold;
	background-color: #004dff;
	width: 400px;
	margin: 10px auto 10px auto;
	color: white;}
.b {
	text-align: center;}
input.login {
	width: 220px;
	font-family: 'Handlee';
	font-size: 18px;
	border: 1px dotted grey;
	border-radius: 7px;
	padding: 8px;}
input.login:hover, input.login:focus {
	border: 1px solid #0056ff;
	background-color: #e8e8e8;}
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
		            
               <div class="main5">
			<form action="" method="post">
				<h2 class="login">Login to PLUTO</h2>
				<div class="name">
					<label class="login" for="mail">Email:</label>
					<input class="login" type="email" name="e2" placeholder="Your email here..." id="mail" required />
				</div>
	
				<div class="name">
					<label for="pass" class="login">Password:</label>
					<input type="password" class="login"  name="p1" placeholder="Your password here..." id="pass" required />
				</div>
	
				<div class="b">
					<input class="login" id="button" type="submit" name="b2" value="Login" />
				</div>
<%
if(request.getParameter("b2")!=null){
    String un=request.getParameter("e2");
    String pw=request.getParameter("p1");
    Connection con=null;
    Statement st;
    ResultSet rs;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
        st=con.createStatement();
        String sql="select * from flight where email='"+un+"' and password='"+pw+"'";
        rs=st.executeQuery(sql);
        if(rs.next()){
            session.setAttribute("naam",rs.getString(1));
            String retun=(String)session.getAttribute("rdate1");
            if(retun!=null){
            response.sendRedirect("showstatusr.jsp");}
            else{
            response.sendRedirect("showstatus.jsp");}
        }
        else{
            out.println("<br/>Invalid Email or Password");
        }
    }catch(Exception e){
        out.println(e.toString());
    }
}
%>
			</form>
			<div class="new">
				<a href="signup-page.jsp">Create a new Account</a>
			</div>
		</div>

	</body>
</html>