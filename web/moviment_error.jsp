<%--
  Created by IntelliJ IDEA.
  User: MarioAsus
  Date: 19/03/2018
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title></title>
</head>
<body>
<%@ page isErrorPage="true" %>

S'ha produït un error del tipus.<%= exception %> al fer el moviment <br/>
<%= exception.getMessage() %>
</body>
</html>
