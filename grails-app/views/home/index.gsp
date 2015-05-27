<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 5/22/15
  Time: 10:40 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Welcome</title>
</head>

<body>

<!-- Header -->
<section id="header" class="dark">
    <header>
        <h1>Welcome to Mac Security</h1>
        <p></p>
    </header>
    <footer>
        <a href="#second" class="button scrolly">Proceed to your profile</a>
        <g:link controller="logout" class="button scrolly">Logout</g:link>
    </footer>
</section>

<!-- Second -->
<section id="second" class="main">
    <div class="content dark style2">
        <div class="container">
            <div class="row">
                <div class="10u">
                    <section>
                        <h3>Profile</h3>
                        <div class="table-wrapper">
                            <table class="default">
                                <tbody>
                                <tr>
                                    <td>Username:</td>
                                    <td>${user.username}</td>
                                </tr>
                                <tr>
                                    <td>Email:</td>
                                    <td>${user.email}</td>
                                </tr>
                                <tr>
                                    <td>First Name:</td>
                                    <td>${user.firstName}</td>
                                </tr>
                                <tr>
                                    <td>Last Name:</td>
                                    <td>${user.lastName}</td>
                                </tr>
                                <tr>
                                    <td>Nicname:</td>
                                    <td>${user.nicName}</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <footer>
                            <g:link controller="user" action="editProfile" id="${user.id}" class="button">Edit Profile</g:link>
                            <g:link controller="user" action="changePassword" class="button">Change Password</g:link>
                            <sec:ifAnyGranted roles="ROLE_ADMIN">
                                <g:link controller="adminUser" class="button">Admin Home</g:link>
                            </sec:ifAnyGranted>
                        </footer>
                    </section>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>