<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 5/22/15
  Time: 10:40 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:message code="adminRole.editRole.title"/></title>
</head>

<body>


<!-- Second -->
<section id="second" class="main">
    <div class="content dark style2">
        <div class="container">
            <div class="row">
                <div class="10u">
                    <section>
                        <h3><g:message code="adminRole.editRole.heading" args="[role.authority]"/></h3>
                        <div class="table-wrapper">
                            <g:if test="${usersInRole}">
                                <h3>User In Role</h3>
                            </g:if>
                            <g:else>
                                <th>No Users In Role</th>
                            </g:else>
                            <table class="default">
                                <thead>
                                <tr>
                                    <th>Username</th>
                                    <th>First Name</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${usersInRole}" var="user">
                                    <tr>
                                        <td>${user.username}</td>
                                        <td>${user.firstName}</td>
                                        <td><g:link action="updateUsers" params="[type:'remove',userId:user.id,roleId:role.id]">remove</g:link></td>
                                    </tr>
                                </g:each>
                                </tbody>
                            </table>
                            <br/><br/><br/>
                            <g:if test="${usersNotInRole}">
                                <th>Users Not In Role</th>
                            </g:if>
                            <g:else>
                                <th>All users have this role</th>
                            </g:else>
                            <table class="default">
                                <thead>
                                <tr>
                                    <th>Username</th>
                                    <th>First Name</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${usersNotInRole}" var="user">
                                    <tr>
                                        <td>${user.username}</td>
                                        <td>${user.username}</td>
                                        <td><g:link action="updateUsers" params="[type:'add',userId:user.id,roleId:role.id]">add</g:link></td>
                                    </tr>
                                </g:each>
                                </tbody>
                            </table>
                        </div>
                        <g:link action="index" class="button">Done</g:link>
                    </section>
                </div>
            </div>
        </div>
    </div>
</section>


</body>
</html>