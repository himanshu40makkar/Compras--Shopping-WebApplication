<%@page import="dao.productdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*"  %> 
    <%@page errorPage="error.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compras</title>
</head>

<body>
<% 
int id=Integer.parseInt(request.getParameter("id"));
ArrayList a1=(ArrayList)session.getAttribute("cart");
int pid=(Integer)a1.remove(id-1);
productdao.increaseStock(pid, 1);
response.sendRedirect("viewcart.jsp");
%>

</body>
</html>