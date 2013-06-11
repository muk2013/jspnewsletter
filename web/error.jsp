<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Fehlerseite</title>
        <link href='http://fonts.googleapis.com/css?family=Rambla:700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="styles/screen.css" />
    </head>
    <body>
        <header>
            <h1>Ooops, was ist da los???</h1></header>
        <article>
            <p class="centerit">
            Ein Fehler ist aufgetreten.
            Die Seite <%= request.getAttribute("javax.servlet.error.request_uri")%> hat eine Ausnahme vom Typ 
            <%= exception.getClass().getName()%> ausgelöst. Die Fehlermeldung lautet <%= exception.getMessage() %>
            </p>
        </article>
        <footer> </footer>
    </body>
</html>
