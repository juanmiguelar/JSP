<%@page language="java" contentType="text/html" isErrorPage="false" errorPage="error.jsp" %>
<%@page import="java.util.Date"%>
<%-- 
    Document   : Hello
    Created on : 21-jun-2015, 15:07:58
    Author     : Juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hola Mundo</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>La hora del servidor es <%= new Date()%></p>
    </body>
</html>
