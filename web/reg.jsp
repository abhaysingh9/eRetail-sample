<%-- 
    Document   : reg
    Created on : Jul 11, 2015, 7:41:25 PM
    Author     : Abhay Singh
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>STARTUP</title>
        <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
    </head>
    <body>
        <div class="container">
            <div id="login">
        <form method="post" action="registration.jsp" class="login">
            <fieldset class="clearfix">
            <center>
                <p><h1> REGISTER </h1></p>
            <br>
                <p><span class="fontawesome-user"></span><input type="text" name="fname" value="" placeholder="Firstname" /></p>
                <p><span class="fontawesome-user"></span><input type="text" name="fname" value="" placeholder="Last Name" /></p>
                <p><span class="fontawesome-user"></span><input type="text" name="email" value="" placeholder="Email" /></p>
                <p><span class="fontawesome-user"></span><input type="text" name="uname" value="" placeholder="username" /></p>
                <p><span class="fontawesome-lock"></span><input type="password" name="pass" value="" placeholder="password"/></p>       
                <input type="submit" value="Register" class="login-submit"/>
                <p>Registered already?  <a href="index.html">Login</a></p>
            </center>
            </fieldset>
        </form>
        </div>
        </div>
    </body>
</html>