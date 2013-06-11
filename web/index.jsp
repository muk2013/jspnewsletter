<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Newsletter</title>
        <link href='http://fonts.googleapis.com/css?family=Rambla:700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="styles/screen.css" />
    </head>
    <body>
        <header>
            <h1>Newsletter sofort bestellen</h1></header>
        <article>
            <form method="get">
                <label for="vorname">Vorname <sup>*</sup></label>
                <input id="vorname" name="firstname" placeholder="Vorname" required />

                <label for="nachname">Nachname <sup>*</sup></label>
                <input id="nachname" name="name" placeholder="Nachname" required />

                <label for="email">Email <sup>*</sup></label>
                <input type="email" id="email" name="email" placeholder="beispiel@web.de" required />

                <label for="geburtstag">Geburtsdatum</label>
                <input id="geburtstag" name="birthdate" type="date" />

                <label for="javaerfahrung">Wieviele Jahre Java-Erfahrung?</label>
                <input id="javaerfahrung" name="experience" type="number" min="0" max ="10" value="5" />	

                <label><input type="checkbox" name="agreed" required />
                    Datenschutzrichtlinie zur Kenntnis genommen</label>

                <label for="submit" class="centerit" title="Zur Registrierung hier klicken">
                    <input type="submit" id="submit" value="Jetzt registrieren!" />
                </label>
                <p class="legal"><sup>*</sup> erforderliche Eingabe.</p>		

            </form>
        </article>
        <footer> </footer>
    </body>
</html>

