<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="regBean" scope="session" class="com.example.newsletter.Registration" />
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Confirmation</title>
        <link href='http://fonts.googleapis.com/css?family=Rambla:700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="styles/screen.css" />
    </head>
    <body>
        <header>
            <h1>Newsletter-Registrierung</h1></header>
        <article>
            <h2 class="centerit">
                Vielen Dank für die Bestellung unseres Newsletter. <br>
                Sie bekommen die nächstmögliche Ausgabe an Ihre Adresse
                <%= regBean.getEmail()%>
            </h2>
        </article>
        <footer> </footer>
    </body>
</html>

