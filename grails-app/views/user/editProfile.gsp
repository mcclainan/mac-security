<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 5/22/15
  Time: 10:40 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Profile  - Edit</title>
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
                            <h3>Profile Edit</h3>
                        </header>
                        <g:form action="updateProfile">
                            <g:render template="/templates/messageBlock"/>
                            <div class="row half">
                                <div class="6u">
                                    <g:textField value="${command.firstName}"  name="firstName" id="firstName" class="text" placeholder="First Name" />
                                </div>
                                <div class="6u">
                                    <g:textField value="${command.lastName}" class="text" type="text" name="lastName" id="lastName" placeholder="Last Name" />
                                </div>
                            </div>
                            <div class="row half">
                                <div class="6u">
                                    <g:textField value="${command.username}" class="text" type="text" name="username" id="username" placeholder="username" />
                                </div>
                                <div class="6u">
                                    <g:textField value="${command.email}" class="text" type="text" name="email" id="email" placeholder="email" />
                                </div>
                            </div>
                            <div class="row half">
                                <div class="12u">
                                    <g:textField value="${command.nicName}" class="text" type="text" name="nicName" id="nicName" placeholder="nic name" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="12u">
                                    <ul class="actions">
                                        <li><g:submitButton name="Edit Profile" class="button"/></li>
                                        <li><g:link action="changePassword" class="button">Change Password</g:link></li>
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