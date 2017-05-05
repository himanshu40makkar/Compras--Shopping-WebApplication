<%@page import="dao.productdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/main.css">

<title>Compras: Product View</title>
</head>
<body style="background-color: white ">

<% int pid=Integer.parseInt(request.getParameter("item"));int dis=0;
%>
<div class="main">
<jsp:include page="header.jsp"></jsp:include>
<hr><center>
Yeah! Nice Choice.:-)
</center>
<hr/>
<table style="width:100%;padding:0px">
<tr style="padding:0px">
<td style="width:50%;padding:0px">
<div style="width:100%;background-color: black;color:white;padding:0px ">
Product Id.
</div>
<%=pid %>
<div style="width:100%;background-color: black;color:white;padding:0px ">
Product Name
</div>
<%=productdao.search(pid).getName()%>
<div style="width:100%;background-color: black;color:white;padding:0px ">
Product Price
</div><% out.print("Rs."); %>
<span id="price"><%=productdao.search(pid).getPrice() %></span>
<div style="width:100%;background-color: black;color:white;padding:0px ">
Product Description
</div>
<%=productdao.search(pid).getDescription()%>

<div style="width:100%;background-color: black;color:white;padding:0px ">
Product Brand
</div>
<%=productdao.search(pid).getBrand()%>
<div style="width:100%;background-color: black;color:white;padding:0px ">
Product Category
</div>
<%=productdao.search(pid).getCategory()%>
</td>
<td><%
out.println("<img src=\"images/pic"+pid+".jpg\" style=\"width:500px;height:500px\">");
%>
</td></tr>
</table><center>

 &nbsp;
<%
int net=Integer.parseInt(productdao.search(pid).getPrice())-dis;
out.println("<a href=\"add2cart.jsp?item="+pid+"\" style=font-size:35px;background-color:black;color:white; class=option><span class=\"s1\">Buy Now for Rs."+net+"</span></a>");
%>
<br/> 
</center><hr/><jsp:include page="footer.html"/>
</div>
</body>
</html>