<%-- 
    Document   : carting1
    Created on : Jul 20, 2015, 9:16:13 PM
    Author     : Abhay Singh
--%>
<%
    if(session.isNew())
    {
        response.sendRedirect("index.html");
    }
    %>
<%! String piid;%>
<%! String pid;  %>
<%! String desc; %>
<%! String source; %>
<%! float cost=0; int avail;%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import = "java.sql.*"%>
<%@page import="Prd.Product"%>
<%
    String s=request.getParameter("pid");
    Integer amount= Integer.parseInt( request.getParameter("amount"));
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/startup","root", "0129");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from prodinf where pid ='" + s + "'");
    while(rs.next())
    {
        pid=rs.getString("pid");
        cost=rs.getInt("cost");
        desc=rs.getString("dis");
        avail=rs.getInt("avail");
    }
    Product p=new Product(pid,desc,cost,avail);
    %><%= p.getPID()%><%
    List cart = new ArrayList();//(ArrayList) session.getAttribute("carrt");
    if(amount<avail)
    {
        for(int i=0;i<amount;i++)
        {
            cart.add(p);
            out.print("Hiiii");
            
        }
        session.setAttribute("carrt", cart) ;
        RequestDispatcher rel=request.getRequestDispatcher("bigpage1.jsp");
        out.print("Add to cart sucessfull");
        rel.include(request, response);
    }
    else
    {
        
        out.print("invalid request");
        RequestDispatcher re=request.getRequestDispatcher("detail.jsp");
        re.include(request, response);
    }
    %>