<%-- 
    Document   : feed.jsp
    Created on : Jul 18, 2015, 2:06:06 PM
    Author     : Abhay Singh
--%>
<%@page import="facebookclasses.FBConnection" %>
<%! FBConnection fbConnection= new FBConnection(); %>
<html>
<head>
<meta>
<title>Java Facebook Login</title>

</head>
<body style="text-align: center; margin: 0 auto;">
	<div style="margin: 0 auto; background-image: url(./img/fbloginbckgrnd.jpg); height: 360px; width: 610px;">
		<a href=" <%=fbConnection.getFBAuthUrl()%> "> <img style="margin-top: 138px;" src="./img/facebookloginbutton.png" />
		</a>
	</div>
</body>
</html>