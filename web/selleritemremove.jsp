<%-- 
    Document   : selleritemremove
    Created on : Jul 18, 2015, 10:16:24 PM
    Author     : Abhay Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
    </head>
    <body>
        <div id="header">
            <h1 id="logo">STARTUP STORE</h1>
            <p><a href="logout.jsp">Logout</a></p>
        </div>
        <div class="container">
            <div id="login">
                <form method="post" action="removeitem.jsp" >
                    <center>
                        <h1>Remove Item</h1>
                        <p><span class="fontawesome-user"></span><input type="text" name="pid" value="" placeholder="Product ID" /></p>
                        <p><span class="fontawesome-lock"></span><input type="text" name="amount" value="" placeholder="Amount"/></p>
                        <input type="submit" value="Remove"/>
                    </center>
                </form>
            </div>
        </div>
    </body>
</html>
