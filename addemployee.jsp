<%-- 
    Document   : addemployee.jsp
    Created on : Jan 8, 2018, 6:57:17 PM
    Author     : Computer
--%>

<%@page import="databaseobject.connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add employee</title>
    </head>
    <body>
        <%      int i=0;
                String driver="com.mysql.jdbc.Driver";
                String url;
                url ="jdbc:mysql://localhost:3306/employeedatabase";
                String username="root";
                String password="";
                Connection con=null;
                
                PreparedStatement ps=null;
                ResultSet rs=null;
                String employeename=request.getParameter("emp_name");
                String employeemail=request.getParameter("emp_email");
                String employeecontact=request.getParameter("emp_contact");
                String employeeaddress=request.getParameter("emp_address");
             try
             { 
                                   

               Class.forName("com.mysql.jdbc.Driver");
               con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employeedatabase","root","");
                    
               ps=con.prepareStatement("insert into employeeregister values(?,?,?,?)");
               ps.setString(1, employeename);
               ps.setString(2, employeemail);
               ps.setString(3, employeecontact);
               ps.setString(4, employeeaddress);
               i=ps.executeUpdate();
               
               if(i>0)
               {
                   response.sendRedirect("addemployee-success.jsp");
                   
               }
               else
               {
                   response.sendRedirect("addemployee-error.jsp");
               }
                 
            
                
                 
             }
             catch(Exception e)
             {
              e.printStackTrace();
             }
                  
            
            
        %>
    </body>
</html>
