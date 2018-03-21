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
             <%--   <c:set var="cell" value="${j*2+(10-j)}"/>
                <c:set var="cell_color" value="white"/>
                <c:if test="${(cell==53)||(cell==54)||(cell==64)||(cell==64)||(cell==57)||(cell==58)||(cell==67)||(cell==68) }">
                    <c:set var="cell_color" value="blue"/>
                </c:if>
                <td bgcolor="${cell_color}"></td>--%>
            </c:forEach>
        </tr>
    </c:forEach>
</table>