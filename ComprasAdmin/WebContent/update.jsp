<%@page import="dao.productdao"%>
<%@page import="model.product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
product product=new product();
product.setId(request.getParameter("id"));
product.setBrand(request.getParameter("brand"));
product.setCategory(request.getParameter("cat"));
product.setDescription(request.getParameter("desc"));
product.setName(request.getParameter("name"));
product.setPrice(request.getParameter("price"));
product.setSex(request.getParameter("sex"));
product.setType(request.getParameter("type"));
product.setStock(Integer.parseInt(request.getParameter("stock")));
productdao.updateProduct(product);
response.sendRedirect("products.jsp");
%>
</body>
</html>