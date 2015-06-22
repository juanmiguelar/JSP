<%-- 
    Document   : AnotherName
    Created on : 21-jun-2015, 17:13:57
    Author     : Juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Another Page</title>
    </head>
    <body>
        <jsp:useBean id="persona" scope="session" class="Bean.Persona"/>
        
        <h1>Hello World!</h1>
        <p>Another page but the same name</p>
        <p>My name is: <jsp:getProperty name="persona" property="nombre"/></p>
    </body>
</html>
