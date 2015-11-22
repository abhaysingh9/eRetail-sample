<%-- 
    Document   : createcart
    Created on : Jul 15, 2015, 7:15:38 PM
    Author     : Abhay Singh
--%>
<%@page import = "java.sql.*"%>
<%@page import ="java.util.*" %>
<%@page import="Prd.Product" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.isNew()) {
        response.sendRedirect("index.html");
 }
    else
    {
        %>
        
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" media="screen" type="text/css"/>
        <title>cart</title>
    </head>
    <body>
        <div id="header">
            <h1 id="logo"><a title="Home" href="bigpage1.jsp">STARTUP STORE</a></h1>
            <p><a class="cart" href="cart.jsp" title="Your Shopping Cart">Cart</a></p>
            <p><a href="logout.jsp">Logout</a></p>
        </div>
        
            <%! ArrayList checkout;%>
            <%
                try {
                
                    checkout= (ArrayList) session.getAttribute("carrt") ;
                    if(checkout==null)
                    {
                        
                        %>
                        <div class="container">
                            <h3>Cart Empty</h3>
                            <a href="bigpage1.jsp">
                                <h6>Let's Shop</h6>
                            </a>
                        </div>
            <%
                    }
                    else
                    {
                        float Tcost=0;
                        Product p;
                        
                        for(int i=0;i<checkout.size();i++)
                        {
                            p = (Product) checkout.get(i);
                            Tcost=Tcost+p.getCost();
                            %>
                        
                            <form method="post" class="" action="checkoutform.jsp">
                            <p>PRODUCT= <%= p.getPID() %> </p>
                            <p>COST= <%=p.getCost() %> </p>
                            <p><a href="remove.jsp">Remove Item</a><p> 
                            
                                
                       
                            <% 
                        }%>
                        <input type="submit" value="Proceed to buy"/>
                            </form>
                        
                        <%
                        
                    }
                }
                catch(NullPointerException npe)
                {
                    
                }
            %>
       
    </body>
</html>
<%
    }
    %>