<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.product"%>
<%@page import="dao.productdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table, td, th {
    border: 1px solid black;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th {
    height: 50px;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body  style="font-family: courier;font-size: 30px"><center>
<a href=home.jsp><img src="images/logo.jpg"></a><br/><br/>
<fieldset>
<legend >Products</legend>
<table>
<tr style="background-color: black;color:white">
<td>P.Id</td><td>Name</td><td>Price</td><td>Sex</td><td>Brand</td><td>Type</td><td>Category</td><td>Stock</td><td>Action</td>
</tr>
<%
ArrayList al=productdao.search();
System.out.println(al.size());
Iterator it=al.iterator();
while(it.hasNext()){
	product pr=(product)it.next();
	out.println("<tr ><td>"+pr.getId()+"</td><td>"+pr.getName()+"</td><td>"+pr.getPrice()+"</td><td>"+pr.getSex()+"</td><td>"+pr.getBrand()+"</td><td>"+pr.getType()+"</td><td>"+pr.getCategory()+"</td><td>"+pr.getStock()+"</td><td><a style=color:black href=editProduct.jsp?pid="+pr.getId()+">Edit</a></td></tr>");
	
}
%>
</table>
</fieldset>
</body>
</html>