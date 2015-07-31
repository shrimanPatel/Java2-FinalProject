<%-- 
    Document   : index
    Created on : 29-Jul-2015, 11:09:59 PM
    Author     : Shriman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>


        <%
            if (session.getAttribute("username") == null) {
        %>
        <a href="jsp/login.jsp">Login / Sign up</a>
        <%} else {
        %>
        <h3>Hello, <%= session.getAttribute("username")%>!</h3>
        <a href="jsp/logout.jsp">logout</a>
        <%
            }
        %>
    </body>
</html>
