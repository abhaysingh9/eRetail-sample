<%-- 
    Document   : detail
    Created on : Jul 16, 2015, 12:24:30 AM
    Author     : Abhay Singh
--%>
<%@page import="java.util.List"%>
<% if(session.isNew())
{
    response.sendRedirect("index.html");
}%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>
<%@page import ="Prd.Product" %>
<%! String piid;%>
<%! String pid;  %>
<%! String desc; %>
<%! String source; %>
<%! float cost=0; int avail;%>
<%
try
{
    piid = session.getAttribute("pid").toString();
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
                    
    }
    Product p=new Product(pid,desc,cost,avail);
    %><%= p.getPID()%><%
    List l =(List) session.getAttribute("carrt");
    if(Integer.parseInt(request.getParameter("pcs"))<avail)
    {
        for(int i=0;i<Integer.parseInt(request.getParameter("pcs"));i++)
        {
            l.add(p);
            
        }
    }
    else
    {
        RequestDispatcher re=request.getRequestDispatcher("detail.jsp");
        out.print("invalid request");
        re.include(request, response);
    }
    session.setAttribute("carrt", l) ;
}
catch(NullPointerException npe)
{
                
}
catch(Exception se)
{
    se.printStackTrace();
}
finally{
    response.sendRedirect("bigpage1.jsp");
}
%>
<%--
<%@include file= "first.html" %>
<%@include file="second.html" %>
This shows two pages at a time in a web page
--%>