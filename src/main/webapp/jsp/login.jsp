<%-- 
    Document   : login
    Created on : 28-Jul-2015, 2:11:03 AM
    Author     : Shriman
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>movieDB - Login</title>
        <script src="js/login.js"></script>
        <script src="js/prefixfree.min.js"></script>
        <script src='https://codepen.io/assets/libs/fullpage/jquery.js'></script>

    </head>

    <body>

        <div class="body"></div>
        <div class="grad"></div>
        <div class="header">
            <div>movie<span>DB</span></div>
        </div>
        <br>

        <a href="index.html" id="attach_box" style="color: white; position: absolute; top: calc(50% - 60px); left: calc(50% - 50px);">Login / Signup</a>

        <div id="login">
            <form method="post" action="/login">
                <input type="text" name="username" placeholder="username" required><br>
                <input type="password" name="pwd" placeholder="password" required><br>
                <input type="submit" name="login" value="Login">
            </form>
        </div>

    </body>
</html>
