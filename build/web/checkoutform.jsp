<%-- 
    Document   : checkoutform
    Created on : Jul 18, 2015, 1:31:59 PM
    Author     : Abhay Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/style.css" media="screen" type="text/css"/>
        <title>Checkout</title>
    </head>
    <body>
        <div id="header">
            <h1 id="logo"><a title="Home" href="bigpage.jsp">STARTUP STORE</a></h1>
            <p><a class="cart" href="cart.jsp" title="Your Shopping Cart">Cart</a></p>
            <p><a href="logout.jsp">Logout</a></p>
        </div>
        <div class="container">
            <div id="login">
                <form method="post" action="login.jsp" class="login">
                    <center>
                        <h1> WELCOME </h1>
                        <p>You can send the money to account no. XXXX-XXXX-XXXX-XXX once we recieve the payment the products will  be immediateley dispatched.</p>
                        <p><a href="bigpage.jsp"></a>Continue Shopping</p>
                    </center>
                </form>
            </div>
        </div>
    </body>
</html>
