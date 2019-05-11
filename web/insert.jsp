<%-- 
    Document   : m1
    Created on : Apr 5, 2019, 10:07:23 PM
    Author     : Aravind Raj
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        Connection cn = null;
        Statement stmt; 
        Class.forName("com.mysql.jdbc.Driver");            
        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","");
        stmt = cn.createStatement();
        String name,password;
        name = request.getParameter("username");
        password = request.getParameter("password");
        String query = "insert into demotable values('"+name+"','"+password+"')";
        stmt.executeUpdate(query);
        %>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
