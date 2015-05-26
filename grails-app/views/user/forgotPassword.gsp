<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 5/22/15
  Time: 10:40 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:message code="user.forgotPassword.title"/></title>
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
                            <h3><g:message code="user.forgotPassword.heading"/></h3>
                        </header>
                        <g:form action="sendEmail">
                            <g:render template="/templates/messageBlock"/>
                            <div class="row half">
                                <div class="6u">
                                    <g:message code="user.forgotPassword.instruction"/>
                                </div>
                                <div class="6u">
                                    <g:textField value="${command?.email}"  name="email" id="email" class="text" placeholder="${message(code: "user.forgotPassword.field.email.placeholder")}" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="12u">
                                    <ul class="actions">
                                        <li><g:submitButton name="${message(code: "user.forgotPassword.button.sendEmail")}" class="button"/></li>
                                    </ul>
                                </div>
                            </div>
                        </g:form>
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