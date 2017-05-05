<%@page import="dao.productdao"%>
<%@page import="model.product"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.orderdao"%>
<%@page import="model.order"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compras: Order Details</title>
<link rel="stylesheet" href="css/main.css"> 

</head>
<body style="background-color: white"><% 
int oid=Integer.parseInt(request.getParameter("orderid"));
String email=request.getParameter("emailid");
if(orderdao.searchById(oid, email)==null)
{
	out.println("<center><div style=background-color:black;color:white >Invalid Email or Order id </div>	</center>");
%>
<jsp:include page="track.jsp"/>
<%
}else{
order order=orderdao.searchById(oid,email);
%>

<div class="main">
<jsp:include page="header.jsp"/><center>
<hr/>Order Status
<hr/>
<fieldset >
<legend>Order Details</legend>

<table >
<tr><td>Order Id.  </td><td>:<%=order.getId()%></td></tr>
<tr><td>Status  </td><td>:<% if(order.getStatus()==0) out.println("Processing");
else if(order.getStatus()==1)
	out.println("Shipped");
else
	out.println("Delivered");
	%></td></tr>
<tr><td>Price </td><td>:Rs<%=order.getPrice()%></td></tr>
<tr><td>First Name  </td><td>:<%=order.getFirst()%></td></tr>
<tr><td>Last Name  </td><td>:<%=order.getLast()%></td></tr>
<tr><td>Contact  </td><td>:<%=order.getContact()%></td></tr>
<tr><td>Email </td><td>:<%=order.getEmail()%></td></tr>

<tr><td>Shipping Address  </td><td>:<%=order.getShipping()%></td></tr>
<tr><td>Billing Address  </td><td>:<%=order.getBilling()%></td></tr>
</table>
</center>
</fieldset>
<fieldset>
<legend>Products Purchased</legend>
<center>
<table>
<tr style="background-color:black;color:white;"><td style="padding-left:50px;padding-right:50px">SrNo.</td><td style="padding-left:50px;padding-right:50px">Product Name</td><td style="padding-left:50px;padding-right:50px">Price</td></tr>

<%
ArrayList arrayList=orderdao.searchProduct(oid);
Iterator iterator=arrayList.iterator();
int p=0;
while(iterator.hasNext())
{int pid=(Integer)iterator.next();
product product=productdao.search(pid);
%>
<tr ><td style="padding-left:50px;padding-right:50px"><%= ++p %></td><td style="padding-left:50px;padding-right:50px"><%=product.getName() %></td><td style="padding-left:50px;padding-right:50px"><%=product.getPrice() %></td><td><% out.println("<img src=\"images/pic"+pid+".jpg\" style=width:100px;height:100px; >");%></tr>
<%} %>
</table></center>
</fieldset>

<hr/>
<jsp:include page="footer.html"></jsp:include>
</div>
<%} %>
</body>
</html>