<%-- 
    Document   : Registros
    Created on : 21-jun-2015, 23:05:46
    Author     : Juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Archivo" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personas registradas</title>
    </head>
    <body>

        <jsp:useBean id='archivo' scope="session" class="beans.Archivo"/>
        <%
            archivo.close();
            String registros = archivo.obtenerRegistros();
        %>

        <p>Estos son los registros</p>
        <p><%= registros%></p>

    </body>
</html>
