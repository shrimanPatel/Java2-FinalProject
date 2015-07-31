<%-- 
    Document   : logout
    Created on : 30-Jul-2015, 7:46:24 PM
    Author     : Shriman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    session.invalidate();
    response.sendRedirect("../index.jsp");
%>
