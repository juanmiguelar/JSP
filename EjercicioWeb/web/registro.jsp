<%-- 
    Document   : registro
    Created on : 21-jun-2015, 19:31:35
    Author     : Juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel='stylesheet' type="text/css" href='estilo.css'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <%@include file="header.html" %>
    </head>
    <body>
        <%@include file='menu.html' %>
        <div id='seccion-formulario'>

            <form id='formulario' method='get' action="resultadoRegistro.jsp">
                <p>Complete el formulario</p>
                <label>Nombre: </label>
                <input type='text' name="nombre">
                <br>
                <br>

                <label>Edad: </label>
                <input type='text' name="edad" size='3' maxlength='3'>
                <br>
                <br>

                <input type='submit' value='Registrar'>
                <input type='reset' value="Limpiar registro">
            </form>

        </div>
    </body>
    <%@include file='footer.html' %>
</html>
