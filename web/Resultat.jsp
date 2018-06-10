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
    <script>
        function allowDrop(ev) {
            ev.preventDefault();
        }

        function drag(ev) {
            ev.dataTransfer.setData("text", ev.target.id);
        }

        function drop(ev) {
            console.log(ev.target);
            ev.preventDefault();
            var data = ev.dataTransfer.getData("text");
            ev.target.appendChild(document.getElementById(data).cloneNode(true));
        }
    </script>
</head>
<body>

    <jsp:useBean id="jugador" type="edu.fje.daw2.JugadorBean" scope="request"></jsp:useBean>
        <c:if test="${jugador.nom.equals('mario')}">
            <ct:admin name="${jugador.nom}" pass="${jugador.password}"/>
        </c:if>
        <c:if test="!${jugador.nom.equals('mario')}">
            <h1>Benvingut ${jugador.nom}</h1>
        </c:if>
        <ct:taulell numFiles="10" numColumnes="10" color="white" width="720" height="720"/>
        <img id= "imatge1" src="./piece1.png" width="67" height="67" draggable="true" ondragstart="drag(event)">
        <img id= "imatge2" src="./piece2.png" width="67" height="67" draggable="true" ondragstart="drag(event)">
        <img id= "imatge3" src="./piece3.png" width="67" height="67" draggable="true" ondragstart="drag(event)">
        <img id= "imatge4" src="./piece4.png" width="67" height="67" draggable="true" ondragstart="drag(event)">
        <img id= "imatge5" src="./piece5.png" width="67" height="67" draggable="true" ondragstart="drag(event)">
        <img id= "imatge6" src="./piece6.png" width="67" height="67" draggable="true" ondragstart="drag(event)">
        <img id= "imatge7" src="./piece7.png" width="67" height="67" draggable="true" ondragstart="drag(event)">
        <img id= "imatge8" src="./piece8.png" width="67" height="67" draggable="true" ondragstart="drag(event)">
        <img id= "imatge9" src="./piece9.png" width="67" height="67" draggable="true" ondragstart="drag(event)">
        <img id= "imatge10" src="./piece10.png" width="67" height="67" draggable="true" ondragstart="drag(event)">
        <img id= "imatge11" src="./piece11.png" width="67" height="67" draggable="true" ondragstart="drag(event)">
        <img id= "imatge12" src="./piece12.png" width="67" height="67" draggable="true" ondragstart="drag(event)">
</body>
</html>
