<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 5/22/15
  Time: 10:40 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Invalid Token</title>
</head>

<body>

<!-- Second -->
<section id="second" class="main">
    <div class="content dark style2">
        <div class="container">
            <div class="row">
                <div class="6u">
                    <section>
                        <header>
                            <h3>Invalid Token</h3>
                        </header>
                        <div class="row half">
                            <div class="6u">
                                <g:if test="${reason=='invalid'}">
                                    <p>This token is invalid.</p>
                                </g:if>
                                <g:else>
                                    <p>This token is expired.</p>
                                    <p>Please go to the <g:link action="forgotPassword">forgot password</g:link> page to restart the process.</p>
                                </g:else>
                            </div>
                        </div>
                    </section>
                </div>
                <div class="8u">
                </div>
            </div>
        </div>
    </div>
</section>

</body>
</html>