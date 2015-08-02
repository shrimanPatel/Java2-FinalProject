<%-- 
    Document   : login
    Created on : 28-Jul-2015, 2:11:03 AM
    Author     : Shriman
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="../css/style.css" />

        <title>movieDB - Login</title>
        <script src="../js/login.js"></script>
        <script src="../js/prefixfree.min.js"></script>
        <script src='https://codepen.io/assets/libs/fullpage/jquery.js'></script>
    </head>
    <body>

        <%
            if (session.getAttribute("username") == null) {
        %>

        <div class="member-login">
            <form class="login" action="../login" method="post" >

                <div class="formtitle">Welcome Again, <span style="color:Blue; font-weight:bold;">Login</span></div>
                <div class="input">
                    <input type="text" placeholder="User Name" name="username"  required/> 
                    <span><img src="../images/select.png"/> </span>
                </div>
                <div class="input">
                    <input type="password"  placeholder="Password" name="pwd" required/>
                    <span><img src="../images/close.png"/></span>
                </div>
                <div class="buttons">
                    <input class="bluebutton" type="submit" value="Login" name="login" />
                    <div class="clear"> </div>
                </div>

            </form>
        </div>

        <div class="sign_up">
            <form class="sign" action="../signup" method="post">
                <div class="formtitle"><span style="color:Blue; font-weight:bold;">Sign Up</span>, It's free.</div>
                <div class="top_section">
                    <div class="section">
                        <div class="input username">
                            <input type="text" placeholder="User Name" name="username" required/><span><img src="../images/select.png"/> </span>
                        </div>

                        <div class="input-sign email">
                            <input type="email"  placeholder="Email" name="email" required /> 
                        </div>
                        <div class="clear"> </div>
                    </div>

                    <div class="section">
                        <div class="input password">
                            <input type="password"  placeholder="Password" name="pwd" required/><span><img src="../images/close.png"/></span>
                        </div>

                        <div class="input re-password">
                            <input type="password"  placeholder="Confirm password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Confirm password';
                                    }" required/><span><img src="../images/close.png"/></span>
                        </div>
                        <div class="clear"> </div>
                    </div>

                    <div class="submit">
                        <input class="bluebutton submitbotton" type="submit" value="Sign up" name="signup" />
                    </div>
                    <div class="clear"> </div>
                </div>
            </form>

            <%
                if (session.getAttribute("exist") != null) {
            %>
            <div class="formtitle" style="color:red; margin-top:5px;"><p> <%= session.getAttribute("exist")%> </p></div>
            <%
                }
            %>


        </div>
        <%
            if (session.getAttribute("error") == null) {
            } else {
        %>
        <h1><%= session.getAttribute("error")%></h1>  
        <%
            }
        } else {
        %>
        <h2>You have already been logged in !!</h2>
        <%
            }
        %>

    </body>
</html>

