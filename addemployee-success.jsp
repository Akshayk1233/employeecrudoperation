<%-- 
    Document   : addemployee-success
    Created on : Jan 8, 2018, 7:49:17 PM
    Author     : Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add employee Success</title>
    </head>
    <body>
      
     <p>Record successfully saved!</p>  <%
     response.sendRedirect("addnewemployee.html");  %>
  
    </body>
</html>
