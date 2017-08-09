<%-- 
    Document   : ListData
    Created on : Aug 6, 2017, 4:23:55 PM
    Author     : This
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Details</title>
        <style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 50%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
    </head>
    <body background="listdata.jpg">
    <center>
       
        <%
             Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost/sampledb","root","");
            

 
 String user=(String)session.getAttribute("unm"); 

            Statement pst=(Statement)con.createStatement();
            ResultSet rs =(ResultSet)pst.executeQuery("select * from admin_user where username='"+user+"' ");
             Statement ps=(Statement)con.createStatement();
             ResultSet ed =(ResultSet)ps.executeQuery("select degree,hobbies,status,clg from admin_info where username='"+user+"' ");
            
           %> 
           
           <h1><font color="#19e5c2">Here Are the Complete Details of Logged in User :    </font></h1>  <br><br><br>
              
              
        <table >
            <tr><td colspan="8" align="center" style='font-weight:bold;'>Personal Details</td></tr>
            <tr><th>ID</th><th>Name</th><th>Username</th><th>Password</th><th>Email</th><th>Mobile no</th><th>Gender</th><th>DOB</th>   </tr><tr>
           <%
            while(rs.next()){                
           %>   <tr>  
           <td><%=rs.getInt(1)%></td>
          
          <td><%=rs.getString(2)%></td>
          <td><%=rs.getString(3)%></td>
          <td><%=rs.getString(4)%></td>
          <td><%=rs.getString(5)%></td>
          <td><%=rs.getString(6)%></td>
          <td><%=rs.getString(7)%></td>
          <td><%=rs.getString(8)%></td>
          </tr>
          
                <%
           
                  }%>
        </table><br><br>
        <table>
        	<tr><td colspan="8" align="center" style='font-weight:bold;'>Educational Details</td></tr>
            <tr><th>Degree</th><th>Hobbies</th><th>Language</th><th>College Name</th>   </tr>
            <tr>
           <%
            while(ed.next()){                
           %>   <tr>  
           <td><%=ed.getString(1)%></td>
          
          <td><%=ed.getString(2)%></td>
          <td><%=ed.getString(3)%></td>
          <td><%=ed.getString(4)%></td>
          
          
          
          </tr>
          
                <%
           
                  }%>
        </table>
        <br>
        <br><br><br>
        <a href="index.html"><input type="button" style="border-radius:40px/24px; height:40px;width:150px; background-color:#a160e5" value="Home"></a>
    </center>
    </body>
</html>
