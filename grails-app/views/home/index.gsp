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

<!-- Third -->
<section id="third" class="main">
    <header>
        <div class="container">
            <h2>Ornare varius lorem ipsum ante lectus</h2>
            <p>Gravida dis placerat lectus ante vel nunc euismod eget ornare varius gravida euismod lorem ipsum dolor sit amet consequat<br />
                feugiat. Gravida dis placerat lectus ante vel nunc euismod eget ornare varius gravida euismod lorem ipsum dolor sit amet.</p>
        </div>
    </header>
    <div class="content dark style3">
        <div class="container">
            <span class="image featured"><img src="images/pic07.jpg" alt="" /></span>
            <div class="row">
                <div class="4u">
                    <h3>Diam vivamus turpis lorem sodales lectus ornare</h3>
                    <p>Gravida dis placerat lectus ante vel nunc euismod est turpis sodales. Diam
                    tempor dui lacinia eget ornare varius gravida. Gravida dis placerat lectus ante
                    vel nunc euismod est turpis sodales. Diam tempor dui lacinia accumsan vivamus
                    augue cubilia vivamus nisi eu eget ornare varius gravida euismod.  Gravida dis
                    lorem ipsum dolor placerat magna tempus feugiat.</p>
                    <p>Lectus ante vel nunc euismod est turpis sodales. Diam tempor dui lacinia
                    accumsan vivamus augue cubilia vivamus nisi eu eget ornare varius gravida dolore
                    euismod lorem ipsum dolor sit amet consequat. vivamus nisi eu eget ornare varius
                    gravida dolore euismod lorem ipsum dolor sit amet consequat. vivamus nisi eu
                    eget ornare et magna.</p>
                </div>
                <div class="4u">
                    <p>Gravida dis placerat lectus ante vel nunc euismod est turpis sodales. Diam
                    tempor dui lacinia eget ornare varius gravida. Gravida dis placerat lectus ante
                    vel nunc euismod est turpis sodales. Diam tempor dui lacinia accumsan vivamus
                    augue cubilia vivamus nisi eu eget ornare varius gravida euismod.  Gravida dis
                    lorem ipsum dolor placerat magna tempus feugiat.</p>
                    <p>Lectus ante vel nunc euismod est turpis sodales. Diam tempor dui lacinia
                    accumsan vivamus augue cubilia vivamus nisi eu eget ornare varius gravida dolore
                    euismod lorem ipsum dolor sit amet consequat eget ornare varius gravida euismod.
                    Gravida dis lorem ipsum dolor placerat magna tempus feugiat magna tempus lorem.</p>
                    <p>Lectus ante vel nunc euismod est turpis sodales. Diam tempor dui lacinia
                    accumsan vivamus augue cubilia.</p>
                </div>
                <div class="4u">
                    <p>Placerat lectus ante vel nunc euismod est turpis sodales. Diam tempor dui
                    lacinia eget ornare varius gravida. Gravida dis placerat lectus ante vel nunc
                    euismod est turpis sodales. Diam tempor dui lacinia accumsan vivamus augue
                    cubilia vivamus nisi eu eget ornare varius gravida euismod.  Gravida dis
                    lorem ipsum dolor placerat magna tempus feugiat. Lectus ante vel nunc euismod
                    est turpis sodales. Diam tempor dui lacinia dolore.</p>
                    <p>Accumsan vivamus augue cubilia vivamus nisi eu eget ornare varius gravida
                    dolore euismod lorem ipsum dolor sit amet conseismod lorem ipsum dolor sit amet
                    consequat lorem ipsum consequat feugiat sed tempus euismod feugiat veroeros.</p>
                    <footer>
                        <a href="#fourth" class="button scrolly">Ipsum ornare lorem dolor</a>
                    </footer>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Basic Elements -->
    <section class="main">
        <header>
            <div class="container">
                <h2>A Whole Lotta Elements</h2>
                <p>General purpose elements for every general purpose. Or something like that.</p>
            </div>
        </header>
        <div class="content style1 dark">
            <div class="container">
                <section>
                    <header>
                        <h3>Paragraph</h3>
                        <p>This is a byline</p>
                    </header>
                    <p>Phasellus nisl nisl, varius id <sup>porttitor sed pellentesque</sup> ac orci. Pellentesque
                    habitant <strong>strong</strong> tristique <b>bold</b> et netus <i>italic</i> malesuada <em>emphasized</em> ac turpis egestas. Morbi
                    leo suscipit ut. Praesent <sub>id turpis vitae</sub> turpis pretium ultricies. Vestibulum sit
                    amet risus elit.</p>
                </section>
                <section>
                    <header>
                        <h3>Blockquote</h3>
                    </header>
                    <blockquote>Fringilla nisl. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget.
                    tempus euismod. Vestibulum ante ipsum primis in faucibus. Cras sit amet urna eros, id egestas
                    tempus ante ipsum primis in faucibus orci luctus et ultrices.</blockquote>
                </section>
                <section>
                    <header>
                        <h3>Divider</h3>
                    </header>
                    <p>Donec consectetur <a href="#">vestibulum dolor et pulvinar</a>. Etiam vel felis enim, at viverra
                    ligula. Ut porttitor sagittis lorem, quis eleifend nisi ornare vel. Praesent nec orci
                    facilisis leo magna. Cras sit amet urna eros, id egestas urna. Quisque aliquam
                    tempus euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices
                    posuere cubilia.</p>
                    <hr />
                    <p>Donec consectetur vestibulum dolor et pulvinar. Etiam vel felis enim, at viverra
                    ligula. Ut porttitor sagittis lorem, quis eleifend nisi ornare vel. Praesent nec orci
                    facilisis leo magna. Cras sit amet urna eros, id egestas urna. Quisque aliquam
                    tempus euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices
                    posuere cubilia.</p>
                </section>
                <section>
                    <header>
                        <h3>Unordered List</h3>
                    </header>
                    <ul class="default">
                        <li>Donec consectetur vestibulum dolor et vel felis enim at viverra ligula. Ut porttitor sagittis lorem.</li>
                        <li>Donec consectetur vestibulum dolor et vel felis enim at viverra ligula. Ut porttitor sagittis lorem.</li>
                        <li>Donec consectetur vestibulum dolor et vel felis enim at viverra ligula. Ut porttitor sagittis lorem.</li>
                        <li>Donec consectetur vestibulum dolor et vel felis enim at viverra ligula. Ut porttitor sagittis lorem.</li>
                    </ul>
                </section>
                <section>
                    <header>
                        <h3>Ordered List</h3>
                    </header>
                    <ol class="default">
                        <li>Donec consectetur vestibulum dolor et vel felis enim at viverra ligula. Ut porttitor sagittis lorem.</li>
                        <li>Donec consectetur vestibulum dolor et vel felis enim at viverra ligula. Ut porttitor sagittis lorem.</li>
                        <li>Donec consectetur vestibulum dolor et vel felis enim at viverra ligula. Ut porttitor sagittis lorem.</li>
                        <li>Donec consectetur vestibulum dolor et vel felis enim at viverra ligula. Ut porttitor sagittis lorem.</li>
                    </ol>
                </section>
                <section>
                    <header>
                        <h3>Table</h3>
                    </header>
                    <div class="table-wrapper">
                        <table class="default">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Description</th>
                                    <th>Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>00001</td>
                                    <td>Lorem ipsum dolor</td>
                                    <td>Ut porttitor sagittis lorem quis nisi ornare.</td>
                                    <td>29.99</td>
                                </tr>
                                <tr>
                                    <td>00002</td>
                                    <td>Sit amet nullam</td>
                                    <td>Ut porttitor sagittis lorem quis nisi ornare.</td>
                                    <td>19.99</td>
                                </tr>
                                <tr>
                                    <td>00003</td>
                                    <td>Feugiat felis viverra</td>
                                    <td>Ut porttitor sagittis lorem quis nisi ornare.</td>
                                    <td>29.99</td>
                                </tr>
                                <tr>
                                    <td>00004</td>
                                    <td>Sagittis enim felis</td>
                                    <td>Ut porttitor sagittis lorem quis nisi ornare.</td>
                                    <td>19.99</td>
                                </tr>
                                <tr>
                                    <td>00005</td>
                                    <td>Nullam sed vestibulum</td>
                                    <td>Ut porttitor sagittis lorem quis nisi ornare.</td>
                                    <td>19.99</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="3"></td>
                                    <td>100.00</td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </section>
                <section>
                    <header>
                        <h3>Form</h3>
                    </header>
                    <form method="post" action="#">
                        <div class="row half">
                            <div class="6u">
                                <input class="text" type="text" name="name" id="name" value="" placeholder="John Doe" />
                            </div>
                            <div class="6u">
                                <input class="text" type="text" name="email" id="email" value="" placeholder="johndoe@domain.tld" />
                            </div>
                        </div>
                        <div class="row half">
                            <div class="12u">
                                <div class="select">
                                    <select name="department" id="department">
                                        <option value="">Choose a department</option>
                                        <option value="1">Manufacturing</option>
                                        <option value="2">Administration</option>
                                        <option value="3">Support</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row half">
                            <div class="12u">
                                <input class="text" type="text" name="subject" id="subject" value="" placeholder="Enter your subject" />
                            </div>
                        </div>
                        <div class="row half">
                            <div class="12u">
                                <textarea name="message" id="message" placeholder="Enter your message"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="12u">
                                <ul class="actions">
                                    <li><input type="submit" class="button" value="Send Message" /></li>
                                    <li><input type="reset" class="button alt" value="Clear Form" /></li>
                                </ul>
                            </div>
                        </div>
                    </form>
                </section>
            </div>
        </div>
    </section>

<!-- Fourth -->
<section id="fourth" class="main">
    <header>
        <div class="container">
            <h2>Sed feugiat ipsum consequat</h2>
            <p>Gravida dis placerat lectus ante vel nunc euismod eget ornare varius gravida euismod lorem ipsum dolor sit amet consequat<br />
                feugiat. Gravida dis placerat lectus ante vel nunc euismod eget ornare varius gravida euismod lorem ipsum dolor sit amet.</p>
        </div>
    </header>
    <div class="content style4 featured">
        <div class="container small">
            <form method="post" action="#">
                <div class="row half">
                    <div class="6u"><input type="text" class="text" placeholder="Name" /></div>
                    <div class="6u"><input type="text" class="text" placeholder="Email" /></div>
                </div>
                <div class="row half">
                    <div class="12u"><textarea name="message" placeholder="Message"></textarea></div>
                </div>
                <div class="row">
                    <div class="12u">
                        <ul class="actions">
                            <li><input type="submit" class="button" value="Send Message" /></li>
                            <li><input type="reset" class="button alt" value="Clear Form" /></li>
                        </ul>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>

<!-- Footer -->
<section id="footer">
    <ul class="icons">
        <li><a href="#" class="fa fa-twitter solo"><span>Twitter</span></a></li>
        <li><a href="#" class="fa fa-facebook solo"><span>Facebook</span></a></li>
        <li><a href="#" class="fa fa-google-plus solo"><span>Google+</span></a></li>
        <li><a href="#" class="fa fa-dribbble solo"><span>Dribbble</span></a></li>
        <li><a href="#" class="fa fa-github solo"><span>GitHub</span></a></li>
    </ul>
    <div class="copyright">
        <ul class="menu">
            <li>&copy; Untitled. All rights reserved.</li>
            <li>Design: <a href="http://html5up.net/">HTML5 UP</a></li>
            <li>Images: <a href="http://ineedchemicalx.deviantart.com">Felicia Simion</a></li>
        </ul>
    </div>
</section>

</body>
</html>