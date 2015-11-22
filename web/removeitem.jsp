<%-- 
    Document   : removeitem
    Created on : Jul 18, 2015, 10:57:14 PM
    Author     : Abhay Singh
--%>

<%@ page import ="java.sql.*" %>
<%
    int amount = Integer.parseInt(request.getParameter("amount"));    
    String pid =(String) request.getParameter("pid");
    RequestDispatcher re= request.getRequestDispatcher("selleritemremove.jsp");
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
       if(avail>amount)
       {
           avail=avail-amount;
       }
       else
       {
           out.print("request failed, taking out more elements");
            re.include(request, response);
       }
        
    } else {
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
        out.print("Removed sucessfully");
        re.include(request, response);
    }
    
%>