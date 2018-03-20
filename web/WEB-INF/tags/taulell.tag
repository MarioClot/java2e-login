<%--
  Created by IntelliJ IDEA.
  User: MarioAsus
  Date: 19/03/2018
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>

<%@tag language="java" description="taulell" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ attribute name="numFiles" required="true"%>
<%@ attribute name="numColumnes" required="true"%>
<%@ attribute name="color" required="false"%>
<%@ attribute name="width" required="false"%>
<%@ attribute name="height" required="false"%>
<table bgcolor="${color}" border="1" width="${width}" height="${height}">
    <c:forEach var="i" begin="1" end="${numFiles}" step="1">
        <tr>
            <c:forEach var="j" begin="1" end="${numColumnes}" step="1">
                <td></td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>