<%@page import="model.user"%>
<%@page import="dao.productdao"%>
<%@page import="model.product"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page errorPage="error.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compras: View Cart</title>
<link rel="stylesheet" href="css/main.css"> 
<script src="js/jquery-1.11.3.min.js"></script>
<script>
$(document).ready(function(){
	
	$("#bt1").click(function(){
		$("#f1").slideDown();
		$("#bt1").hide();
	});
	
});
	</script>
</head>
<body style="background-color: white">
<div class="main">
<jsp:include page="header.jsp"/>
<hr/>
<center>

You are just one step away. GO AND GRAB THESE ITEMS.
<hr/>
<fieldset>
<legend>Cart</legend>
<% ArrayList arrayList =(ArrayList)session.getAttribute("cart");
Iterator i= arrayList.iterator();
int s=0,price=0;
if(arrayList.size()==0)
{
%>
<div style="margin:10%;font-size:25px">Your Cart is Empty.<br/>
<br/>
<a style="background-color: black;color:white;font-size:25px" href="index.jsp" class="option">Continue Shopping</a>
</div>
<%
}
else
{out.print("<table><tr style=\"background-color:black;color:white;\"><td style=\"padding-left:50px;padding-right:50px\">SrNo.</td><td style=\"padding-left:50px;padding-right:50px\">Product Name</td><td style=\"padding-left:50px;padding-right:50px\">Price</td><td style=\"padding-left:50px;padding-right:50px\">Action</td></tr>");

while(i.hasNext())
{
	int pid=(Integer)i.next();
	product product=productdao.search(pid);
	price=price+Integer.parseInt(product.getPrice());
	
	out.println("<tr><td style=\"padding-left:50px;padding-right:50px\">"+ ++s +"</td><td style=\"padding-left:50px;padding-right:50px\"><img src=\"images/pic"+pid+".jpg\" style=width:100px;height:100px; ><br>"+product.getName()+" </td><td style=\"padding-left:50px;padding-right:50px\">"+product.getPrice()+"</td><td style=\"padding-left:50px;padding-right:50px\"><a class=option href=\"delete.jsp?id="+s+"\"><b>Delete</b></a></td></tr>");
}
session.setAttribute("price",price);
out.println("</table><hr/>Total Price :"+price+"<br/><hr/>");

%>
<button style="background-color: black;color:white;font-size: 25px" id="bt1">Checkout</button>
<%} %></fieldset>
<fieldset id="f1" style="display: none">
<legend>Shipping Information</legend>

<%
out.print("<form action=checkout.jsp method=post>");

		if(session.getAttribute("user")==null)
{
	out.print("Want to checkout as a Guest? You may <a href=login.jsp class=option style=\"background-color:black;color:white;font-size:25px\">Login</a> or <a style=\"background-color: black;color:white;font-size:25px\" href=signUp.jsp class=option>Signup</a><br/><br/>");
	out.print("<table>");
	out.print("<tr><td>First Name: </td><td><input required=required type=\"text\" name=\"first\" style=\"width:10cm\"></td></tr>"+
			"<tr><td>Last Name: </td><td><input required=required type=text  name=last style=width:10cm></td></tr>"+
			"<tr><td> Contact: </td><td><input required=required type=text name=contact style=width:10cm></td></tr>"+
			"<tr><td> Email:</td><td><input required=required type=text name=email style=width:10cm></td></tr>"+
			"<tr><td> Billing Address:</td><td><textarea required=required name=Baddress rows=5 style=width:10cm></textarea></td></tr>"+
			"<tr><td> Shipping Address:</td><td><textarea required=required name=Saddress rows=5 style=width:10cm></textarea></td></tr>");

}
else
{
	user user=(user)session.getAttribute("user");
	out.print("<table>");
	
	out.print("<tr><td>First Name: </td><td><input required=required type=\"text\" name=\"first\" style=\"width:10cm\" value="+user.getFirst()+"></td></tr>"+
			"<tr><td>Last Name: </td><td><input type=text required=required name=last style=width:10cm value="+user.getLast()+"></td></tr>"+
			"<tr><td> Contact: </td><td><input type=text required=required name=contact style=width:10cm value="+user.getContact()+"></td></tr>"+
			"<tr><td> Email:</td><td><input type=text required=required name=email style=width:10cm value="+user.getEmail()+"></td></tr>"+
			"<tr><td> Billing Address:</td><td><textarea required=required name=Baddress rows=5 style=width:10cm>"+user.getbAddress()+"</textarea></td></tr>"+
			"<tr><td> Shipping Address:</td><td><textarea required=required name=Saddress rows=5 style=width:10cm>"+user.getsAddress()+"</textarea></td></tr>");

}
%>
</table>
<hr/>
<input type="submit"style="background-color: black;color:white;font-size:25px" value="Checkout"> <a style="background-color: black;color:white;font-size:25px" href="index.jsp" class="option">Continue Shopping</a>
</form>

</fieldset>
</center>
<hr/>
<jsp:include page="footer.html" />
</div>
</body>
</html>