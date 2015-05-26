<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 5/22/15
  Time: 10:40 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Profile  - Change Password</title>
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
                            <h3>Change Password</h3>
                        </header>
                        <g:form action="updateForgotPassword">
                            <g:render template="/templates/messageBlock"/>
                            <div class="row half">
                                <div class="6u">
                                    <g:textField value="${command?.newPassword}" type="password" name="newPassword" id="newPassword" class="text" placeholder="${message(code: 'changePasswordCommand.newPassword.label')}" />
                                </div>
                            </div>
                            <div class="row half">
                                <div class="6u">
                                    <g:textField value="${command?.confirmPassword}" class="text" type="password" name="confirmPassword" id="confirmPassword" placeholder="${message(code: 'changePasswordCommand.confirmPassword.label')}" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="12u">
                                    <ul class="actions">
                                        <g:hiddenField name="id" value="${command?.id}"/>
                                        <g:hiddenField name="username" value="${command.username}"/>
                                        <li><g:submitButton name="Update Password" class="button"/></li>
                                        <li><g:link uri="/" class="button">Return to Home</g:link></li>
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