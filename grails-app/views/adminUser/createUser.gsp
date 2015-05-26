<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 5/26/15
  Time: 11:30 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:message code="adminUser.createUser.title"/> </title>
</head>

<body>
<!-- Basic Elements -->
<section class="main">
    <div class="content style1 dark">
        <div class="container">
            <section>
                <header>
                    <h3><g:message code="adminUser.createUser.header"/></h3>
                </header>
                <g:form action="saveUser">
                    <g:render template="/templates/messageBlock"/>
                    <div class="row half">
                        <div class="6u">
                            <label for="username"><g:message code="createUserCommand.username.label"/></label>
                            <g:textField class="text" type="text" name="username" id="username" value="${command?.username}" placeholder="${message(code: 'createUserCommand.username.label')}" />
                        </div>
                        <div class="6u">
                            <label for="email"><g:message code="createUserCommand.email.label"/></label>
                            <g:textField class="text" type="text" name="email" id="email" value="${command?.email}" placeholder="${message(code: 'createUserCommand.email.label')}" />
                        </div>
                    </div>
                    <div class="row half">
                        <div class="6u">
                            <label for="password"><g:message code="createUserCommand.password.label"/></label>
                            <g:passwordField class="text" name="password" id="password" value="${command?.password}" placeholder="${message(code: 'createUserCommand.password.label')}" />
                        </div>
                        <div class="6u">
                            <label for="confirmPassword"><g:message code="createUserCommand.confirmPassword.label"/></label>
                            <g:passwordField class="text" name="confirmPassword" id="confirmPassword" value="${command?.confirmPassword}" placeholder="${message(code: 'createUserCommand.confirmPassword.label')}" />
                        </div>
                    </div>
                    <div class="row half">

                        <div class="6u">
                            <label for="firstName"><g:message code="createUserCommand.firstName.label"/></label>
                            <g:textField class="text" type="text" name="firstName" id="firstName" value="${command?.firstName}" placeholder="${message(code: 'createUserCommand.firstName.label')}" />
                        </div>
                        <div class="6u">
                            <label for="lastName"><g:message code="createUserCommand.lastName.label"/></label>
                            <g:textField class="text" type="text" name="lastName" id="lastName" value="${command?.lastName}" placeholder="${message(code: 'createUserCommand.lastName.label')}" />
                        </div>
                    </div>
                    <div class="row half">
                        <div class="6u">
                            <label for="nicName"><g:message code="createUserCommand.nicName.label"/></label>
                            <g:textField class="text" type="text" name="nicName" id="nicName" value="${command?.nicName}" placeholder="${message(code: 'createUserCommand.nicName.label')}" />
                        </div>
                        <div class="6u">

                        </div>
                    </div>
                    <div class="row half">
                        <div class="6u">
                            <label for="role">Role</label>
                            <g:select name="role" from="${roleList}" optionKey="id" optionValue="authority"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="12u">
                            <ul class="actions">
                                <li><g:submitButton class="button" name="${message(code: 'adminUser.createUser.submit')}" /></li>
                                <li><g:link action="index" class="button alt" onClick="return confirm('${message(code: 'adminUser.createUser.confirm.cancel', default: 'Are you sure?')}');">Admin Home</g:link></li>
                            </ul>
                        </div>
                    </div>
                </g:form>
            </section>
        </div>
    </div>
</section>

</body>
</html>