<%-- 
    Document   : remove.jsp
    Created on : Jul 18, 2015, 1:02:27 PM
    Author     : Abhay Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%
    if(session.isNew())
    {
        response.sendRedirect("index.html#?");
    }
    else
    {
        ArrayList cart=(ArrayList) session.getAttribute("carrt");
        int i= Integer.parseInt(session.getAttribute("index").toString());
            cart.remove(i);
        session.removeAttribute("index");
        session.setAttribute("carrt", cart);
        RequestDispatcher re=request.getRequestDispatcher("cart.jsp");
        re.forward(request, response);        
    }

%>