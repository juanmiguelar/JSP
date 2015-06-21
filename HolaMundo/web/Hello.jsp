<%@ page import='java.util.Date' %>
<html>
    <head>
        <title>Hola Mundo</title>
        <style type="text/css">
            /* Posibilidad de tener estilos dentro de jsp*/
            p{
                font-size: 30px;
                text-align: center;
            }
            
        </style>
    </head>
    <body>
        <p>Hola, esto es una pagina JSP.</p>
        <p>La hora del servidor es <%= new Date() %></p>
    </body>
</html>
