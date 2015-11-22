<%-- 
    Document   : login
    Created on : Jul 11, 2015, 7:39:18 PM
    Author     : Abhay Singh
--%>
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/startup","root","0129");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from userdetails where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.html'>try again</a>");
    }
%>