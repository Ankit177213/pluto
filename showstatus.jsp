<%-- 
    Document   : showstatus
    Created on : Jul 2, 2019, 12:04:05 AM
    Author     : Arjun(Ajju)
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Check Flight</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="script/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </head>
    <body>
    
        
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
        response.sendRedirect("logstsu.jsp");
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
             
            <div class="row">
                <div class="col-lg-12" id="cent">
      
                   
                    
                    <table class="table table-bordered table-hover">
<tr>
	<td colspan="9" class="bg-primary" style="text-align:center;" >
		Flight Details
	</td>
</tr>
<tr class="bg-success">
	<td>Flight ID</td>
	<td>From</td>
	<td>Date</td>
	<td>Arrival Time</td>
        <td>Depart. Time</td>
	<td>To</td>
	<td>Vacant Seats</td>
	<td>Fare</td>
        <td></td>
</tr>
<%
	Connection con=null;
	Statement st;
	ResultSet rs;
	try{
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
		st=con.createStatement();
                                   String fromf2=(String)session.getAttribute("fromf1");
                                   String tof2=(String)session.getAttribute("tof1");
                                   String date2=(String)session.getAttribute("date1");
                                   int adults2=(Integer)session.getAttribute("adults1");
                                   double child2=(Integer)session.getAttribute("child1");
                                   String classf2=(String)session.getAttribute("classf1");
                                   
                        if(classf2.equals("economy"))
                        {
                            
                                   int seatf2=(Integer)session.getAttribute("seatf1");
                                   rs=st.executeQuery("select * from status where fromf='"+fromf2+"' and tof='"+tof2+"' and date='"+date2+"'" );
                            
                      
		while(rs.next())
		{
                    if(seatf2<=(rs.getInt(7))){
                    double tfare=adults2*(rs.getInt(9))+(child2*(0.65)*(rs.getDouble(9)));
                %>
			<tr>
			<td><% out.print(rs.getString(11)); %></td>
			<td><% out.print(rs.getString(1)); %></td>
			<td><% out.print(rs.getString(2)); %></td>
			<td><% out.print(rs.getString(3)); %></td>
                        <td><% out.print(rs.getString(4)); %></td>
			<td><% out.print(rs.getString(5)); %></td>
			<td><% out.print(rs.getString(7)); %></td>
                        <td><% out.print(tfare); %></td>
                        <td><form><input type="submit" class="btn btn-primary" value="Book" name="bok" ></form></td>
			</tr>
		<%
                       if(request.getParameter("bok")!=null){
            session.setAttribute("flid", rs.getString(11));
            session.setAttribute("flittim", rs.getString(3));
            session.setAttribute("ffare", tfare);
            
            response.sendRedirect("customer_detail.jsp");
        }    
		}}}else{
                    int seatf2=(Integer)session.getAttribute("seatf1");
                                   rs=st.executeQuery("select * from status where fromf='"+fromf2+"' and tof='"+tof2+"' and date='"+date2+"'" );
                            
                        
		while(rs.next())
		{
                    if(seatf2<=(rs.getInt(8))){
                    double tfare=adults2*(rs.getInt(10))+(child2*(0.65)*(rs.getDouble(10)));
			%>
			<tr>
			<td><% out.print(rs.getString(11)); %></td>
			<td><% out.print(rs.getString(1)); %></td>
			<td><% out.print(rs.getString(2)); %></td>
			<td><% out.print(rs.getString(3)); %></td>
                        <td><% out.print(rs.getString(4)); %></td>
			<td><% out.print(rs.getString(5)); %></td>
			<td><% out.print(rs.getString(8)); %></td>
                        <td><% out.print(tfare); %></td>
                        <td><form><input type="submit" class="btn btn-primary" value="Book" name="bok" ></form></td>
			</tr>
		<%
                      if(request.getParameter("bok")!=null){
            session.setAttribute("flid", rs.getString(11));
            session.setAttribute("ffare", tfare);
            
            response.sendRedirect("customer_detail.jsp");
        }  
                }}}/*how to disable past dates*/
                
	}catch(Exception e)
	{
		out.println(e.toString());
	}



%>
</table>

                    
                </div>
            </div>
<%

         %>   
    </body>
</html>