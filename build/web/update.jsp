<%-- 
    Document   : update
    Created on : Apr 5, 2019, 10:56:42 PM
    Author     : Aravind Raj
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            Connection con = null;
            Statement stmt;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","");
            stmt = con.createStatement();
            String name,password;
            name = request.getParameter("username");
            password = request.getParameter("password");
            String sql = "update demotable set password = '"+ password + "' where username = '"+ name +"'";
            stmt.executeUpdate(sql);
        %>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
