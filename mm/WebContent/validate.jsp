
<%@page import="model.user"%>
<%@page import="dao.userdao"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compras</title>
</head>
<body>
<%
user ob=new user();
ob.setPassword(request.getParameter("pasword"));
ob.setUsername(request.getParameter("uname"));
if(userdao.validateuser(ob))
{
	session.setAttribute("user",ob);
	response.sendRedirect("index.jsp");}
else
{out.println("<center><div style=background-color:white;color:black >Either UserName or Password is  Incorrect</div></center>");
%>
<jsp:include page="login.jsp"/><%} %>
</body>
</html>