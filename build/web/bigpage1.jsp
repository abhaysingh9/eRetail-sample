<%-- 
    Document   : bigpage1
    Created on : Jul 20, 2015, 4:49:36 PM
    Author     : Abhay Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% if(session.isNew())
{
    response.sendRedirect("index.html");
}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping page</title>
         <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
    </head>
    <body>
        <div id="header">
					<h1><a title="Home" href="bigpage.jsp">STARTUP STORE</a></h1>
                                        <p class="shopping-cart"><a class="cart" href="cart.jsp" title="Your Shopping Cart">Cart</a></p>
					
					<!--"END Search"-->
                                   
					<div class="cl"></div>
					<!-- Navigation -->
					<div id="navigation">
						<ul>
							<li><a title="Feed" href="feed.jsp">Feed</a></li>
							<li><a title="logout" href="logout.jsp">logout</a></li>
							<li><a title="Blog" href="https://www.google.co.in/url?sa=t&rct=j&q=&esrc=s&source=web&cd=3&cad=rja&uact=8&ved=0CDQQFjACahUKEwit8t7u2tzGAhUh5aYKHerrCuI&url=http%3A%2F%2Ffrustventp.blogspot.com%2F&ei=qRimVe35O6HKmwXq16uQDg&usg=AFQjCNHy3NImTE8baO4CgYzjI5sf7-kGvg&sig2=0D7i9nqHtQVy3NQcvS9g-A&bvm=bv.97653015,d.dGY">Blog</a></li>
							<li><a title="About Us" href="aboutus.html">About Us</a></li>							
						</ul>						
					</div>	
					<div class="cl"></div>				
	
					<div class="cl"></div>
				</div>
       <%@page import ="java.util.*"%>
        <%@page import ="java.sql.*"%>
        <%@page import ="Prd.Product" %>
        
        <%! String piid="";%>
        <%! String pid;  %>
        <%! String desc; %>
        <%! String source; %>
        <%! float cost=0; int avail;%>
        
        <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/startup","root", "0129");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from prodinf");
                while(rs.next())
                {
                    pid=rs.getString("pid");
                    cost=rs.getInt("cost");
                    desc=rs.getString("dis");
                    avail=rs.getInt("avail");
                    source=rs.getString("source");
                    %>
    <center>
                    <form method="post" action="detail.jsp">
                        <label> product id: <%=pid %></label>
                        <label> product cost: <%=cost %></label>
                        <img src="<%=source%>"
                        <p>buy<input type="submit" value="<%=pid%>" name="pid">now</p>
                    </form>
                    <br>
    </center>
                    <%
                }
            }
            catch(SQLException se)
            {
                se.printStackTrace();
            }
        %>
    </body>
</html>
