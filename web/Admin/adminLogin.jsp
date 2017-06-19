<%-- 
    Document   : adminLogin
    Created on : 6 May, 2017, 4:19:28 AM
    Author     : 1305009
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN</title>
    </head>
    <body>
        <form action="/TeamPresence/AdLogin">
            Admin Id: <input type="text" name="id"/><br><br> 
            Password :<input type="password" name="pass"/><br> <br>
            <input type="submit" value="Login"/>
        </form>
    </body>
</html>
