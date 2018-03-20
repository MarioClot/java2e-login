<%--
  Created by IntelliJ IDEA.
  User: MarioAsus
  Date: 02/03/2018
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="ct" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Resultat de persones</title>
</head>
<h1>

    <jsp:useBean id="jugador" type="edu.fje.daw2.JugadorBean" scope="request"></jsp:useBean>
        <c:if test="${jugador.nom.equals('mario')}">
            <ct:admin name="${jugador.nom}" pass="${jugador.password}"/>
        </c:if>
        <c:if test="!${jugador.nom.equals('mario')}">
            <h1>Benvingut ${jugador.nom}</h1>
        </c:if>
        <ct:taulell numFiles="10" numColumnes="10" color="white" width="700" height="700"/>
</body>
</html>
