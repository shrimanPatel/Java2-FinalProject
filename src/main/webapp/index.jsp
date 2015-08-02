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
        <!--<link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.5/superhero/bootstrap.min.css" rel="stylesheet">-->
        <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.5/paper/bootstrap.min.css" rel="stylesheet">

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
        <script src="js/movie.js"></script>

        <title>MovieDB - Home</title>
    </head>
    <body style="margin: 0 auto;">

        <div class="body"></div>
        <div class="grad"></div>
        <div class="header">
            <div>movie<span>DB</span></div>
        </div>

        <%
            if (session.getAttribute("username") == null) {
        %>
        <a href="jsp/login.jsp" style="float:right;">Login / Sign up</a>
        <% } else {
        %>
        <h4 style="color:Blue; text-align:right;">Hello, <%= session.getAttribute("username")%>!</h4>
        <a href="jsp/logout.jsp" style="float:right;">logout</a>
        <%
            }
        %>
        <div class="search">
            <input id="search" type="text" placeholder=" Search a movie" name="search">
        </div>
        <!--        <pre>                  
                </pre>-->
        <div id="movieData">
            <div id="loading"><img src="images/loading.gif" /></div>
            <div id="Poster" style="float:left;"></div>
            <div id="Plot"></div>
            <div id="Actors"></div>
            <div id="Awards"></div>
            <div id="Director"></div>
            <div id="Genre"></div>
            <div id="Released"></div>
            <div id="Title"></div>
            <div id="Year"></div>
            <div id="imdbRating"></div>
            <div id="imdbVotes"></div>
            <div id="imdbID"></div>   
        </div>
    </body>
</html>
