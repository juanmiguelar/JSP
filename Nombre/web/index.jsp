<%-- 
    Document   : index
    Created on : 21-jun-2015, 17:23:50
    Author     : Juan
--%>

<%@page import='Bean.Persona' %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Nombre exercise</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
        <jsp:useBean id="persona" scope="session" class="Bean.Persona"/>
        <% 
            persona.setNombre("Juan Miguel");
        %>
        <jsp:setProperty name="persona" property="nombre" value="<%= persona.getNombre() %>"/>
                
            
            <a href="AnotherName.jsp">Try it!</a>
            <p>Mi nombre es: <jsp:getProperty name="persona" property="nombre"/></p>
        
    </body>
</html>
