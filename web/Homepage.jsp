<%-- 
    Document   : Homepage
    Created on : Aug 6, 2017, 6:34:46 PM
    Author     : This
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Form-2</title>
    </head>
    <body background="test.png">
    <center><h1> Register New Account Form-2</h1></center>
      <div style="float: left; margin-left: 550px;"><br>   
          <%  String sid=request.getParameter("sid");%><br>
         
        <form name="education" action="insertEdu" method="post">
            
                <br><br><br><h2><font color="#fffff">Please Enter Education Details :</font></h2><br>
                
           
                <input type="text" name="username" value="" placeholder="username" size="35"><br>
           Degree<input type="radio" name="degree" value="BE">BE
                          <input type="radio" name="degree" value="MS">MS<br>
            
            <input type="text" name="hobbies" value="" placeholder="hobbies" size="35"><br>
            <input type="text" name="status" value="" placeholder="language" size="35"><br>
          <input type="text" name="clg" value="" placeholder="college name" size="35">  <br>    <br><br>      
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="Submit" value="Register" style="border-radius:40px/24px; height:40px;width:150px; background-color:#a160e5">
        </form></div>
    </body>
</html>
