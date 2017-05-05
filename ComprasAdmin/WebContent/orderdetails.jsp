<%@page import="dao.productdao"%>
<%@page import="model.product"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.orderdao"%>
<%@page import="model.order"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css"> 

</head>
<body><%
	int oid=Integer.parseInt(request.getParameter("orderid"));
if(orderdao.searchById(oid)==null)
{
	out.println("<span style=color:red>*Order Id not found</span>");
	request.getRequestDispatcher("search.jsp").include(request,response);

}
else
	{order order=orderdao.searchById(oid);
%><center>
<a href=home.jsp><img src="images/logo.jpg"></a>
<hr/>Order Status</center>
<hr/>
<fieldset > 
<legend>Order Details</legend>

<table >
<tr><td>Order Id.  </td><td>:<%=order.getId()%></td></tr>
<tr><td>Status  </td><td>:<%
	if(order.getStatus()==0) {out.println("Processing");
out.println("<a href=\"shipped?orderid="+order.getId()+"&status=shipped\"> Change to Shipped</a>");
}else if(order.getStatus()==1)
	{out.println("Shipped");
	out.println("<a href=\"shipped?orderid="+order.getId()+"&status=Delivered\"> Change to Delivered</a>");
	}
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
<tr ><td style="padding-left:50px;padding-right:50px"><%= ++p %></td><td style="padding-left:50px;padding-right:50px"><%=product.getName() %></td><td style="padding-left:50px;padding-right:50px"><%=product.getPrice() %></td><td><% out.println("<img src=\"images/images/pic"+pid+".jpg\" style=width:100px;height:100px; >");%></tr>
<%} %>
</table></center>
</fieldset>

<hr/>

<%} %>

</body>
</html>