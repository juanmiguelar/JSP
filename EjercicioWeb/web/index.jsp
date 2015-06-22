<%-- 
    Document   : index
    Created on : 21-jun-2015, 19:31:06
    Author     : Juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <link rel='stylesheet' type="text/css" href='estilo.css'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio JSP</title>
        <%@include file="header.html" %>
    </head>
    <body>
        <h3>Bienvenido a nuestra Web</h3>
        <%@include file='menu.html' %>
        
        <div style='text-align: right'>
            <img id='fenix-img' src='Fenix.png'>
        </div>
    </body>
    <%@include file='footer.html' %>
</html>
