<%@page import="java.util.ArrayList"%>
<%@page import="dao.orderdao"%>
<%@page import="model.user"%>
<%@page import="model.order"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compras: Order Confirmed</title>
</head>
<body style="background-color: white">
<%
String first=(String)session.getAttribute("first");
String last=(String)session.getAttribute("last");
long contact=Long.parseLong((String)session.getAttribute("contact"));

String email=(String)session.getAttribute("email"); 
String Saddress=(String)session.getAttribute("Saddress");
String Baddress=(String)session.getAttribute("Baddress");
int price=0;
if(session.getAttribute("newPrice")!=null)
{price=(Integer)session.getAttribute("newPrice");
}
else
{
	 price=(Integer)session.getAttribute("price");	
}
	order order=new order();
order.setStatus(0);
order.setPrice(price);
order.setFirst(first);
order.setLast(last);
order.setContact(contact);
order.setEmail(email);
order.setShipping(Saddress);
order.setBilling(Baddress);
if(session.getAttribute("user")!=null)
{
	user user=(user)session.getAttribute("user");
	order.setUserid(user.getId());
}
ArrayList arrayList=(ArrayList)session.getAttribute("cart");
session.removeAttribute("cart");
session.removeAttribute("first");
session.removeAttribute("last");
session.removeAttribute("contact");
session.removeAttribute("email");
session.removeAttribute("Saddress");
session.removeAttribute("Baddress");
session.removeAttribute("price");
session.removeAttribute("newPrice");

%>
<div class="main">
<jsp:include page="header.jsp"/><center>
<hr/>
Tracking Details
<hr/><div style="font-size:25px;padding:10%">
<%
if(orderdao.placeOrder(order,arrayList))
{
	out.print("Your order has been placed.You can track your order status by using Order Id."+order.getId()+""); 
	%>
	<br/><br/>
	<form action="feedback.jsp">
	<table>
	<tr>
	
	<td>Feedback :
	</td>
	<td><textarea rows="10" cols="50" name="feedback"></textarea><br/>
	
	</td>
	</tr>
	</table>
	<%="<input type=\"hidden\" name=\"oid\" value="+order.getId()+">"%>
	<%user user=(user)session.getAttribute("user"); %>
	<%="<input type=\"hidden\" name=\"uid\" value="+user.getId()+">"%>
	
	<input type="submit" value="Submit" style="background-color: black;color:white;font-family:courier;font-size: 30px">
	&nbsp;
	<a href="index.jsp" style="text-decoration:none;background-color: black;color: white;font-family: courier;font-size: 30px">Skip</a>
	
	</form> 
	</fieldset>
	<%
	
}
else
{
	out.println("Sorry for the inconvience due to some technical problem");

}
%>
</div></center>
<hr/>
<jsp:include page="footer.html"></jsp:include>
</div>

</body>
</html>