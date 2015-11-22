<%-- 
    Document   : add
    Created on : Jul 18, 2015, 10:56:20 PM
    Author     : Abhay Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : removeitem
    Created on : Jul 18, 2015, 10:57:14 PM
    Author     : Abhay Singh
--%>

<%@ page import ="java.sql.*" %>
<%
    int amount = Integer.parseInt(request.getParameter("amount"));    
    String pid = request.getParameter("pid");
    RequestDispatcher re= request.getRequestDispatcher("selleritemadd.jsp");
    Class.forName("com.mysql.jdbc.Driver");
    try
    {
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/startup","root","0129");
    Statement st = con.createStatement();
    ResultSet rs;
    int avail=0;
    rs = st.executeQuery("select * from prodinf where pid ='" + pid + "'");
    if (rs.next()) {
        avail=rs.getInt("avail");
     
           avail=avail+amount;
    } else 
    {
        out.print("request failed, no such item");
        re.include(request, response);
    }
    st.executeUpdate("update prodinf set avail ='"+avail +"' where pid='"+ pid +"'");
    }
    catch(SQLException se)
    {
        se.printStackTrace();
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    finally{
        out.print("added sucessfully");
        re.include(request, response);
    }
    
%>