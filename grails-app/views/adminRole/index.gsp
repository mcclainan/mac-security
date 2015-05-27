<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 5/26/15
  Time: 8:31 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:message code="adminRole.index.title"/></title>
</head>

<body>
<!-- Basic Elements -->
<section class="main">
    <div class="content style1 dark">
        <div class="container">
            <section>
                <header>
                    <g:link action="createRole" class="button"><g:message code="adminRole.index.create.button"/></g:link>
                    <g:link controller="adminUser" class="button">Admin Home</g:link>
                    <br/><br/>
                    <h3><g:message code="adminRole.index.header"/> </h3>
                </header>
                <div class="row half">
                    <table class="default">
                        <thead>
                            <tr>
                                <th>Authority</th>
                                <th>Add/Remove Users</th>
                            </tr>
                        </thead>
                        <tbody>
                            <g:each in="${roleList}" var="role">
                                <tr>
                                    <td>
                                        ${role.authority.replace('ROLE_','')}
                                    </td>
                                    <td><g:link action="editRole" id="${role.id}"><g:message code="adminRole.index.edit.button"/></g:link> </td>
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