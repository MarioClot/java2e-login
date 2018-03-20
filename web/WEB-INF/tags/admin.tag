<%--
  Created by IntelliJ IDEA.
  User: MarioAsus
  Date: 19/03/2018
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>

<%@tag language="java" description="taulell" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ attribute name="pass" required="false"%>
<%@ attribute name="name" required="false"%>
<h1> Hello ${name}, ets un administrador</h1>
<p>Pass: ${pass}</p>
