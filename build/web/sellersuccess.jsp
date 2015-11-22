<%-- 
    Document   : success
    Created on : Jul 13, 2015, 12:18:47 PM
    Author     : Abhay Singh
--%>

<%@page import="java.util.*" %> 
<%! List cart; %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.isNew()) {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>STARTUP</title>
        <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
    </head>
    <body>
        <div class="container">
            <a href="index.html">
            <h6> Please be legit</h6>
            </a> </div>
    </body>
</html>
<%} else {
    request.getRequestDispatcher("sellerpage.html").forward(request, response);
    }
%>