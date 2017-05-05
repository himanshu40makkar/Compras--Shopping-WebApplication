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
<body  style="font-family: courier;font-size: 30px"><center>
<a href=home.jsp><img src="images/logo.jpg"></a><br/><br/>
<fieldset style="padding:10% ">
<legend >Product Detail</legend>

 <%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
 %>
<%
product product=productdao.search(Integer.parseInt(request.getParameter("pid")));

%>
<%
out.println("<a href=uploadphoto.jsp?pid="+product.getId()+"><img style=width:300px;height:300px src=\"images/images/pic"+product.getId()+".jpg?time="+System.currentTimeMillis()+"\"></a>");
%><br/>
<table>
<form method="post" action="update.jsp"><%="<input type=\"hidden\" name=\"id\" value="+product.getId()+">" %>
<tr>
<td>Name </td><td>:<%
out.println("<input style=font-size:30px type=text name=name  value=\""+product.getName()+"\">");
%>
</tr>
<tr>
<td>Price </td><td>:<%
out.println("<input style=font-size:30px type=text name=price value="+product.getPrice()+">");
%>
</tr>
<tr>
<td>Sex </td><td>:<%
out.println("<input style=font-size:30px type=text name=sex value="+product.getSex()+">");
%>
</tr>
<tr>
<td>Description:</td><td><%
out.println("<textarea style=font-size:30px rows=5 cols=30 name=desc>"+product.getDescription()+"</textarea>");
%>
</tr>
<tr>
<td>Brand </td><td>:<%
out.println("<input style=font-size:30px type=text name=brand value="+product.getBrand()+">");
%>
</tr>
<tr>
<td>Type </td><td>:<%
out.println("<input style=font-size:30px type=text name=type value="+product.getType()+">");
%>
</tr>
<tr>
<td>Category </td><td>:<%
out.println("<input style=font-size:30px type=text name=cat value="+product.getCategory()+">");
%>
</tr>
<tr>
<td>Stock </td><td>:<%
out.println("<input style=font-size:30px type=text name=stock value="+product.getStock()+">");
%>
</tr></table><br/>
<input type="submit" value="Update" style="background-color: black;color:white;font-size:30px;font-family: courier">
</form>
</fieldset>
</body>
</html>