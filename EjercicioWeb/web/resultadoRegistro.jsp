<%-- 
    Document   : resultadoRegistro
    Created on : 21-jun-2015, 19:31:52
    Author     : Juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel='stylesheet' type="text/css" href='estilo.css'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado Registro</title>
        <%@include file="header.html" %>
    </head>
    <body>
        <%@include file='menu.html' %>
        <div id='resultado'>
            <jsp:useBean id='persona' scope="session" class="beans.Persona"/>
            <jsp:setProperty name="persona" property="nombre" param="nombre"/>

            <%
                int edad = 0;

                if (request.getParameter("edad") != "") {

                    edad = Integer.parseInt(request.getParameter("edad"));
                }
            %>

            <jsp:setProperty name="persona" property="edad" param= '<%= edad%>'/>

            <h3>Sus datos son: </h3>
            <p>Nombre: <jsp:getProperty name="persona" property="nombre"/></p>
            <p>Edad: <jsp:getProperty name="persona" property="edad"/></p>
        </div>
    </body>
    <%@include file='footer.html' %>
</html>
