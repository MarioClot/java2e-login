<%--
  Created by IntelliJ IDEA.
  User: MarioAsus
  Date: 19/03/2018
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>

<%@tag language="java" description="taulell" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ attribute name="color" required="false"%>
<%@ attribute name="width" required="false"%>
<%@ attribute name="height" required="false"%>
<%@ attribute name="name" required="false"%>
<img bgcolor="${color}" border="1" width="${width}" height="${height}" src="${name}">
