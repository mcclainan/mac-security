<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 5/26/15
  Time: 8:31 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:message code="adminUser.index.title"/></title>
</head>

<body>
<!-- Basic Elements -->
<section class="main">
    <div class="content style1 dark">
        <div class="container">
            <section>
                <header>
                    <g:link action="createUser" class="button"><g:message code="adminUser.index.create.button"/></g:link>
                    <g:link uri="/" class="button">Home</g:link>
                    <br/><br/>
                    <h3><g:message code="adminUser.index.header"/> </h3>
                </header>
                <div class="table-wrapper">
                    <table class="default">
                        <thead>
                            <tr>
                                <th>Username</th>
                                <th>Email</th>
                                <th>First Name</th>
                            </tr>
                        </thead>
                        <tbody>
                            <g:each in="${userList}" var="user">
                                <tr>
                                    <td>
                                        <g:link action="editUser" id="${user.id}">
                                            ${user.username}
                                        </g:link>
                                    </td>
                                    <td>${user.email}</td>
                                    <td>${user.firstName}</td>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
            </section>
        </div>
    </div>
</section>
</body>
</html>