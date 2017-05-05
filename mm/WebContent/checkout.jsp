<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compras: Checkout</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body style="background-color: white">
<script src="js/jquery-1.11.3.min.js"></script>

<script>
$(document).ready(function(){
	$("#span1").click(function(){
		
	$(".span2").slideDown();	
	});

});

var request;  
function sendInfo()  
{  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
	var code=$("#text1").val();
	var price=$("#price").text();
request.onreadystatechange=getInfo;  
request.open("GET","ajax.jsp?code="+code,true);  
request.send();  
}catch(e){alert("Unable to connect to server");
alert(e);}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;
if(val==0)
	{
	alert('Invalid Coupon');
	
	}
else
	{
$("#price").text(val+"Discount Applied");  
	$(".span2").slideUp();
	}
	}  
}
</script>

<div class="main">
<jsp:include page="header.jsp"/>
<hr/><center>
Finalizing your Order
</center><hr/>
<fieldset>
<legend>
Order Details
</legend><center>
<%if(request.getParameter("first")==null)
{
	response.sendRedirect("index.jsp");
}
	%>
<table>
<tr><td> First Name:</td><td><%=request.getParameter("first") %>
<tr><td> Last Name:</td><td><%=request.getParameter("last") %>
<tr><td> Contact:</td><td><%=request.getParameter("contact") %>
<tr><td> Email:</td><td><%=request.getParameter("email") %>
<tr><td> Shipping Address:</td><td><%=request.getParameter("Saddress") %>
<tr><td> Billing Address:</td><td><%=request.getParameter("Baddress") %>
<tr><td> Mode of Payment:</td><td>Cash on Delivery
<tr><td> Amount to be Paid:</td><td id="price"><%=session.getAttribute("price") %>
</table>
<%
session.setAttribute("first",request.getParameter("first"));
session.setAttribute("last",request.getParameter("last"));
session.setAttribute("contact",request.getParameter("contact"));
session.setAttribute("email",request.getParameter("email"));
session.setAttribute("Saddress",request.getParameter("Saddress"));
session.setAttribute("Baddress",request.getParameter("Baddress"));

%>
<a href="orderconfirmed.jsp" class="option" style="background-color: black;color:white;font-size:25px">Confirm Order</a>
 <a href="viewcart.jsp" class="option" style="background-color: black;color:white;font-size:25px">Modify Order</a>
<a  id="span1" style="font-size:25px;background-color:black;cursor:pointer ;color:white; class=option">Have Promo Code?
</a>

</center></fieldset>
<div class="span2" style="display: none;">
<hr/>
<form><center>
Enter Promo Code <input type="text" id="text1"> <input style="background-color:black;color:white;font-family:courier " type="button" onclick="sendInfo()" value="Apply" >
</center>
</form>

</div>

<hr/>
<jsp:include page="footer.html"/>
</div>
</body>
</html>