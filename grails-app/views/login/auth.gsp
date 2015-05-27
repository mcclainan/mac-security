<!DOCTYPE HTML>
<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 5/21/15
  Time: 4:25 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Dashboard</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <link href="http://fonts.googleapis.com/css?family=Roboto:100,100italic,300,300italic,400,400italic" rel="stylesheet" type="text/css" />
    <!--[if lte IE 8]><script src="${resource(dir:"css/ie", file:"html5shiv.js")}"></script><![endif]-->
    <script src="${resource(dir:"js",file: "jquery.min.js")}"></script>
    <script src="${resource(dir:"js",file: "skel.min.js")}"></script>
    <script src="${resource(dir:"js",file: "init.js")}"></script>
    <noscript>
        <link rel="stylesheet" href="${resource(dir:"css", file: "style.css")}">
        <link rel="stylesheet" href="${resource(dir:"css", file: "style-wide.css")}">
        <link rel="stylesheet" href="${resource(dir:"css", file: "skel-noscript.css")}">
    </noscript>
    <!--[if lte IE 8]><link rel="stylesheet" href="${resource(dir:'css/ie', file: "v8.css")}" /><![endif]-->
    <!--[if lte IE 9]><link rel="stylesheet" href="${resource(dir:'css/ie', file: "v9.css")}" /><![endif]-->

</head>

<body>
<section class="main">
    <div class="content style1 dark">
        <div class="container">
            <section>
                <header>
                    <h3>Login</h3>
                </header>
                <g:if test='${flash.message}'>
                    <div class=''>${flash.message}</div>
                </g:if>
                <form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
                    <div class="row quarter">
                        <div class="4u">
                            <input type='text' class='text' name='j_username' id='username' placeholder="username"/>
                        </div>
                    </div>
                    <div class="row quarter">
                        <div class="4u">
                            <input type='password' class='text' name='j_password' id='password' placeholder="password"/>
                        </div>
                    </div>
                    <div class="row quarter">
                        <div class="4u">
                            <div class="1u">
                                <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                            </div>
                            <div class="6u">
                                <label for='remember_me'><g:message code="springSecurity.login.remember.me.label" default="Remember Me"/></label>
                            </div>
                        </div>
                    </div>
                    <div class="row half">
                        <div class="12u">
                            <ul class="actions">
                                <li><input type='submit' class="button" id="submit" value='${message(code: "springSecurity.login.button")}'/></li>
                            </ul>
                        </div>
                    </div>
                </form>
            </section>
        </div>
    </div>
</section>
<script type='text/javascript'>
    <!--
    (function() {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
    // -->
</script>
</body>
</html>