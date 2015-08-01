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
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.5/superhero/bootstrap.min.css" rel="stylesheet">

        <title>MovieDB - Home</title>
    </head>
    <body>

        <div class="body"></div>
        <div class="grad"></div>
        <div class="header">
            <div>movie<span>DB</span></div>
        </div>

        <%
            if (session.getAttribute("username") == null) {
        %>
        <a href="jsp/login.jsp">Login / Sign up</a>
        <% } else {
        %>
        <h3 style="color:Blue; text-align:right;">Hello, <%= session.getAttribute("username")%>!</h3>
        <a href="jsp/logout.jsp">logout</a>
        <%
            }
        %>
    </body>
</html>
