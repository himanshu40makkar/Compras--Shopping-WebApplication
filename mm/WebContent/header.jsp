<%@page import="dao.productdao"%>
<%@page import="model.product"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.user"%>
<html>
<body>
<script src="js/jquery-1.11.3.min.js"></script>
<script>
$(document).ready(function(){
	$("#img1").click(function(){
		
		$("#ol1").slideToggle();
		$("#ol2").slideUp();
	});$("#img2").click(function(){
		$("#ol1").slideUp();
		$("#ol2").slideToggle();
	});

});
</script>
<%
	user ob=(user)session.getAttribute("user");	
	if(ob!=null)
	{
		out.println("Welcome "+ob.getUsername()+","+" <a class=option href=signout.jsp>Signout</a>");
	}
	else
	{
		out.println("<a class=option href=\"signUp.jsp\">SIGN UP</a> | <a class=option href=\"login.jsp\">LOGIN</a>"+
		" | <a class=option href=track.jsp >TRACK ORDER</a>");
	}
%>

<span style="float:right"><img id="img2" src="images/header-whishlist-star-icon.jpg">
<ol id="ol2"  style="background-color: black;color:white;position:absolute;right: 13%;padding:10px;display: none ">
<li><a style="color:white;text-decoration: none" href="myorders.jsp">My Orders</a>
</ol>
<img id="img1" src="images/header_bag_icon.jpg">
</span>
<ol id="ol1"  style="background-color: black;color:white;position:absolute;right: 0px;padding:10px;display: none ">
<%
if(session.getAttribute("cart")==null )
{
	out.print(" Your Cart is Empty");
}
else
{
ArrayList al= (ArrayList)session.getAttribute("cart");
if(al.size()==0)
{
	out.print(" Your Cart is Empty");
}
else
{
Iterator iterator=al.iterator();
int p=0;
while(iterator.hasNext())
{
	int id=(Integer)iterator.next();
	product product=productdao.search(id);
	p=p+Integer.parseInt(product.getPrice());
	out.println("<li>"+product.getName()+" Rs"+product.getPrice()+" <img src=\"images/pic"+id+".jpg\" style=width:50px;height:50px;></li>");
}
out.print("<hr/>Total Amount = Rs"+p+"</br></br><center><a href=viewcart.jsp class=option style=color:white><b>View Cart</b></a></center>");
}}%> 
</ol>
<div style="text-align: center;">
<br>
<a href="index.jsp"><img src="images/logo.jpg"></a>
<br><br><form method="get" action="search"><input name="search" style="width:240px;font-family:courier;font-size:16px;border:none;border-bottom:1px solid black" type="text" placeholder="Search for Brands,Products"></form>
</div>
<br><center>
<table style="font-size:22px;">
		<td><a href="#" class="option"><a href="shopWomen" class="option"><b>WOMEN</b></a></td>
		<td style="padding-left:150px"><a href="shopMen" class="option"><b>MEN</b></a></td>
		<td style="padding-left:150px"><a href="shopCelebrity" class="option"><b>CELEBRITY STYLE</b></a></td>
		<td style="padding-left:150px"><a href="shopStyle" class="option"><b>STYLE FEED</b></a></td></tr>
	
</table></center>
</body>
</html>