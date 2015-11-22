<%-- 
    Document   : logout
    Created on : Jul 11, 2015, 7:40:44 PM
    Author     : Abhay Singh
--%>

<%
session.setAttribute("userid",null);
session.invalidate();
response.sendRedirect("index.html");
%>