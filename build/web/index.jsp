<%-- 
    Document   : index
    Created on : Apr 5, 2019, 9:28:43 PM
    Author     : Aravind Raj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="insert.jsp">
            Name: <input type="text" name="username">
            Password: <input type="text" name="password">
            <input type="submit" value="Submit">
        </form>
        <form action="update.jsp">
            Update
            Name : <input type="text" name="username"/><br><br>
            Password: <input type="text" name="password">
            <input type="submit" value="update"/>
        </form>
        <form action="delete.jsp">
            Name : <input type="text" name="username"/><br><br>
            <input type="submit" value="Delete"/>
        </form>
        <form action="display.jsp">
            Display
            Name : <input type="text" name="username"/><br><br>
            <input type="submit" value="DISPLAY"/>
        </form>
    </body>
</html>
