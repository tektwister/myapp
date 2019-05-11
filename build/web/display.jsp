<%-- 
    Document   : display
    Created on : Apr 5, 2019, 10:37:35 PM
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
        String name = request.getParameter("username");
        String query = "select * from demotable where username = '"+name+"';";
        ResultSet rs = stmt.executeQuery(query);
        String a=null,b=null;
        while(rs.next())
        {
    %>
    <h3><%= rs.getString("username") %></h3>
    <h3><%= rs.getString("password") %></h3>
    <%
        }
    %>     
    <body>
    </body>
</html>
