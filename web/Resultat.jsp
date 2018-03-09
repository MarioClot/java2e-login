<%--
  Created by IntelliJ IDEA.
  User: MarioAsus
  Date: 02/03/2018
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Resultat de persones</title>
</head>
<body>

    <jsp:useBean id="jugador" type="edu.fje.daw2.JugadorBean" scope="request"></jsp:useBean>
    <%--jsp:getProperty name="persona" property="nom" />
    <jsp:getProperty name="persona" property="numFills" />
    <jsp:getProperty name="persona" property="casat" /--%>
    ${jugador.nom} -  ${jugador.password}
</body>
</html>
