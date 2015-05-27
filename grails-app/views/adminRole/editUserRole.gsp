<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 5/22/15
  Time: 10:40 AM
--%>

<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 5/22/15
  Time: 10:40 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:message code="adminRole.editUserRole.title"/></title>
</head>

<body>


<!-- Second -->
<section id="second" class="main">
    <div class="content dark style2">
        <div class="container">
            <div class="row">
                <div class="10u">
                    <section>
                        <h3><g:message code="adminRole.editUserRole.heading" args="[user.username]"/></h3>
                        <div class="table-wrapper">
                            <h3>User Roles</h3>
                            <table class="default">
                                <thead>
                                <tr>
                                    <th>Role</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${user.authorities}" var="role">
                                    <tr>
                                        <td>${role.authority}</td>
                                        <td><g:link action="updateUserRole" params="[type:'remove',userId:user.id,roleId:role.id]">remove</g:link></td>
                                    </tr>
                                </g:each>
                                </tbody>
                            </table>
                            <br/><br/><br/>
                            <h3>Available Roles</h3>
                            <table class="default">
                                <thead>
                                <tr>
                                    <g:if test="${availableRoles}">
                                        <th>Role</th>
                                    </g:if>
                                    <g:else>
                                        <th>No Available Roles</th>
                                    </g:else>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${availableRoles}" var="role">
                                    <tr>
                                        <td>${role.authority}</td>
                                        <td><g:link action="updateUserRole" params="[type:'add',userId:user.id,roleId:role.id]">add</g:link></td>
                                    </tr>
                                </g:each>
                                </tbody>
                            </table>
                        </div>
                        <footer>
                            <g:link controller="adminUser" action="editUser" id="${user.id}"  class="button">Finished Editing Roles</g:link>
                        </footer>
                    </section>
                </div>
            </div>
        </div>
    </div>
</section>


</body>
</html>