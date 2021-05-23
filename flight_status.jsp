<%-- 
    Document   : flight_status
    Created on : Jul 2, 2019, 12:52:53 PM
    Author     : Arjun(Ajju)
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flight Status</title>
    </head>
    <body>
        
        <jsp:include page="navigation.jsp" />
        
        <form>
            <h2>Check Flight Status</h2>
            <div>
                <label for="jahajid">Enter Flight ID:</label>
                <input type="text" name="statu1" maxlength="4" id="jahajid" />
            </div>
            <div style="margin-left: 150px;">
                <input type="submit" name="g1" value="Check" />
            </div></form>
<%
if(request.getParameter("g1")!=null){
    int fid1=Integer.parseInt(request.getParameter("statu1"));
        Connection con=null;
        Statement st;
        ResultSet rs;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
            st=con.createStatement();
            rs=st.executeQuery("select * from status where fid='"+fid1+"'");
                
            if(rs.next()){%>
                <table class="table table-bordered table-hover">
                <tr>
                    <td colspan="6" class="bg-primary">
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
                </tr>
                <tr>
			<td><% out.print(rs.getString(1)); %></td>
			<td><% out.print(rs.getString(2)); %></td>
			<td><% out.print(rs.getString(3)); %></td>
			<td><% out.print(rs.getString(4)); %></td>
                        <td><% out.print(rs.getString(5)); %></td>
			<td><% out.print(rs.getString(6)); %></td>
			</tr>
<%
            }
        }catch(Exception e){
            out.println(e.toString());
        }
}    
%>
                </table>
    </body>
</html>
