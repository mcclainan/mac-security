<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 5/26/15
  Time: 11:30 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:message code="adminUser.editUser.title"/> </title>
</head>

<body>
<!-- Basic Elements -->
<section class="main">
    <div class="content style1 dark">
        <div class="container">
            <section>
                <header>
                    <h3><g:message code="adminUser.editUser.header"/></h3>
                </header>
                <g:form action="updateUser">
                    <g:render template="/templates/messageBlock"/>
                    <div class="row half">
                        <div class="6u">
                            <label for="username"><g:message code="editUserCommand.username.label"/></label>
                            <g:textField class="text" type="text" name="username" id="username" value="${command?.username}" placeholder="${message(code: 'editUserCommand.username.label')}" />
                        </div>
                        <div class="6u">
                            <label for="email"><g:message code="editUserCommand.email.label"/></label>
                            <g:textField class="text" type="text" name="email" id="email" value="${command?.email}" placeholder="${message(code: 'editUserCommand.email.label')}" />
                        </div>
                    </div>
                    <div class="row half">

                        <div class="6u">
                            <label for="firstName"><g:message code="editUserCommand.firstName.label"/></label>
                            <g:textField class="text" type="text" name="firstName" id="firstName" value="${command?.firstName}" placeholder="${message(code: 'editUserCommand.firstName.label')}" />
                        </div>
                        <div class="6u">
                            <label for="lastName"><g:message code="editUserCommand.lastName.label"/></label>
                            <g:textField class="text" type="text" name="lastName" id="lastName" value="${command?.lastName}" placeholder="${message(code: 'editUserCommand.lastName.label')}" />
                        </div>
                    </div>
                    <div class="row half">
                        <div class="6u">
                            <label for="nicName"><g:message code="editUserCommand.nicName.label"/></label>
                            <g:textField class="text" type="text" name="nicName" id="nicName" value="${command?.nicName}" placeholder="${message(code: 'editUserCommand.nicName.label')}" />
                        </div>
                        <div class="6u">

                        </div>
                    </div>
                    <div class="row half">
                        <div class="6u">
                            <g:checkBox name="passwordExpired" id="passwordExpired" checked="${command?.passwordExpired}"/>
                            <g:message code="editUserCommand.passwordExpired.label"/>
                        </div>
                    </div>
                    <div class="row half">
                        <div class="6u">
                            <g:checkBox name="accountLocked" id="accountLocked" checked="${command?.accountLocked}"/>
                            <g:message code="editUserCommand.accountLocked.label"/>
                        </div>
                    </div>
                    <div class="row half">
                        <br/>
                        <h4>Roles</h4>
                        <ul class="default">
                            <g:each in="${command.roles}" var="role">
                                <li>${role.authority}</li>
                            </g:each>
                        </ul>
                    </div>
                    <div class="row">
                        <div class="12u">
                            <ul class="actions">
                                <g:hiddenField name="id" value="${command.id}"/>
                                <li><g:submitButton class="button" name="${message(code: 'adminUser.editUser.submit')}" /></li>
                                <li><g:link action="" class="button">Edit Roles</g:link></li>
                                <li><g:link action="changePassword" class="button alt">Change Password</g:link></li>
                                <li><g:link action="deleteUser" class="button alt" id="${command?.id}" onClick="return confirm('${message(code: 'adminUser.index.confirm.delete',args: [command?.username], default: 'Are you sure?')}');">Delete</g:link></li>
                                <li><g:link action="index" class="button alt">Admin Home</g:link></li>
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