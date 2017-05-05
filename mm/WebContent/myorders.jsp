<%@page import="model.order"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.orderdao"%>
<%@page import="dao.userdao"%>
<%@page import="model.user"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compras : My Orders</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body style="background-color:white">
<%
if(session.getAttribute("user")==null)
{
	%>
	<jsp:forward page="track.jsp"/>
	<%
}
%>
<div class="main">
<jsp:include page="header.jsp"/>
<hr/>
<center>
Thanks for Shoping with us.
</center><hr/>
<fieldset >
<legend>My Orders</legend>
<center>
<table>
<tr style="background-color:black;color:white"> <td style="padding-left:50px;padding-right:50px">Order Id.</td><td style="padding-left:50px;padding-right:50px">Price</td><td style="padding-left:50px;padding-right:50px">Status</td></tr>
<%
user user=(user)session.getAttribute("user");
		ArrayList al= orderdao.searchProducts(user.getId());
		Iterator iterator=al.iterator();
		while(iterator.hasNext())
		{
			order order=(order)iterator.next();
%>
<tr><td style="padding-left:50px;padding-right:50px"><%=order.getId() %></td><td style="padding-left:50px;padding-right:50px"><%=order.getPrice()%></td><td style="padding-left:50px;padding-right:50px"><% if(order.getStatus()==0) out.println("Processing");
else if(order.getStatus()==1)
	out.println("Shipped");
else
	out.println("Delivered");
	%></td><td><%
	out.println("<a class=\"option\" href=\"orderdetails.jsp?orderid="+order.getId()+"&emailid="+user.getEmail()+"\"><b>View</b></a>");
	%></td></tr>
<%
		}
%>
</table>
</center></fieldset>
<hr/>
<jsp:include page="footer.html"/>
</div>
</body>
</html>