<%-- 
    Document   : delete
    Created on : Apr 5, 2019, 11:54:32 PM
    Author     : Aravind Raj
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            Connection con = null;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","");
            Statement stmt;
            stmt = con.createStatement();
            String name;
            name = request.getParameter("username");
            String sql = "delete from demotable where username='" + name + "'";
            stmt.executeUpdate(sql);
        %>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
