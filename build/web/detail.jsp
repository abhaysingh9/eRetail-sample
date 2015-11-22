<%-- 
    Document   : detail
    Created on : Jul 16, 2015, 12:24:30 AM
    Author     : Abhay Singh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>show detail</title>
        <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
    </head>
    <body>
        <div id="header">
            <h1 id="logo"><a title="Home" href="bigpage1.jsp">STARTUP STORE</a></h1>
            <p><a class="cart" href="cart.jsp" title="Your Shopping Cart">Cart</a></p>
            <p><a href="logout.jsp">Logout</a></p>
        </div>
        <%@page import ="java.util.*"%>
        <%@page import ="java.sql.*"%>
        <%! String piid="";%>
        <%! String pid;  %>
        <%! String desc; %>
        <%! String source; %>
        <%! float cost=0; int avail;%>
        
        <%
            try
            {
                piid = request.getParameter("pid");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/startup","root", "0129");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from prodinf where pid ='" + piid + "'");
                while(rs.next())
                {
                    pid=rs.getString("pid");
                    cost=rs.getInt("cost");
                    desc=rs.getString("dis");
                    avail=rs.getInt("avail");
                    source=rs.getString("source");
                }
                %>
    <center>
        <div class="container">
            <div id="login">
                
                    <form method="post" action="carting1.jsp" class="login">
                        <center>
                            <!--<img src="<%= source %>" alt="paperclip" />-->
                            <h3> Details of selected product</h3>
                            <p>Product ID:<input type="text" name="pid" value="<%= piid %>"></p>
                            <p>Product description: <%= desc %> </p>
                            <p>Available pieces: <%= avail %> </p>
                            <p>Product cost: <%= cost %> </p>
                            <p><span class="fontawesome-user"></span><input type="text" name="amount" value="" placeholder="Enter the number of items" /></p>
                            <input type="submit" value="Add To Cart" />
                        </center>
                    </form>
                            <%}
            catch(SQLException as)
            {
                as.printStackTrace();
}%>
            </div>
        </div>
    </center>
</body>
</html>
<%--
<%@include file= "first.html" %>
<%@include file="second.html" %>
This shows two pages at a time in a web page
--%>