<%@page import="java.util.logging.Logger"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="regBean" scope="session" class="com.example.newsletter.Registration" />
<jsp:setProperty name="regBean" property="*" />
<%! private Logger log = Logger.getLogger("com.example.newsletter");%>
<%! private String formdata = "";%>
<% formdata = "Formulardaten. "
            + request.getParameter("firstname") + " " + request.getParameter("name")
            + ". Email: " + request.getParameter("email")
            + ", Geburtstag: " + request.getParameter("birthdate")
            + ", Erfahrung: " + request.getParameter("experience")
            + ", Erklärung: " + request.getParameter("agreed");
    log.info(formdata);
%>

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
        <p><%= regBean.getAll()%></p>
        <header>
            <h1>Newsletter bestellen</h1></header>
        <article>
            <form method="get">
                <label for="vorname">Vorname <sup>*</sup></label>
                <input id="vorname" name="firstname" placeholder="Vorname" value="<%=regBean.getFirstname()%>" required />

                <label for="nachname">Nachname <sup>*</sup></label>
                <input id="nachname" name="name" placeholder="Nachname" value="<%=regBean.getName()%>" required />

                <label for="email">Email <sup>*</sup></label>
                <input type="email" id="email" name="email" placeholder="beispiel@web.de" value="<%=regBean.getEmail()%>" required />

                <label for="geburtstag">Geburtsdatum</label>
                <input id="geburtstag" name="birthdate" type="date" value="<%=regBean.getBirthdate()%>" />

                <label for="javaerfahrung">Wieviele Jahre Java-Erfahrung?</label>
                <input id="javaerfahrung" name="experience" type="number" min="0" max ="10" value="<%=regBean.getExperience()%>" />	

                <label><input type="checkbox" name="agreed" checked="<%=regBean.getAgreed()%>" required />
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

