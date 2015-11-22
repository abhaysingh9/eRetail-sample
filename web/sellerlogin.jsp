<%-- 
    Document   : sellerlogin
    Created on : Jul 18, 2015, 8:42:59 PM
    Author     : Abhay Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/startup","root","0129");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from sellerdetails where user='" + userid + "' and pwd='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("sellersuccess.jsp");
    } else {
        out.println("Invalid password <a href='sellerlogin.html'>try again</a>");
    }
%>
