<%@page import="java.util.List"%>
<%@page import="model.product"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.productdao"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compras: Shop Women</title>
<link rel="stylesheet" href="css/main.css">
<script src="js/jquery-1.11.3.min.js"></script>
<script>
$(document).ready(function(){
	
	$("#bt1").click(function(){
		$("#ul1").slideToggle();
		
	});
	
});

</script>
</head>
<body style="background-color:white">
<c:if test="${sex==male}">

</c:if>
<div class="main" style="background-color:white">
<jsp:include page="header.jsp"></jsp:include>
<hr><center>
There are large varieties to Choose from. :-)
 </center>
<hr/>
<table >
<tr>
<td style="width:220px;">


<div style="background-color: black; font-size: 25px;color:white;font-family: courier"><center>Brand</center></div>
<form action="shopWomen">
<div style="padding:10%">
<input type="checkbox" name="brand" value="adidas">Adidas<br/>
<input type="checkbox" name="brand" value="puma">Puma<br/>
<input type="checkbox" name="brand" value="reebok">Reebok<br/>
</div>
<div style="background-color: black; font-size: 25px;color:white;font-family: courier"><center>Category</center></div>
<div style="padding:10%">
<input type="checkbox" name="category" value="top">Top<br/>
<input type="checkbox" name="category" value="tshirt">T-shirt<br/>
<input type="checkbox" name="category" value="trouser">Trouser<br/>
</div>
<div style="background-color: black; font-size: 25px;color:white;font-family: courier"><center>Price</center></div>
<div style="padding:10%">
<input type="checkbox" name="price" value="<200"><200<br/>
<input type="checkbox" name="price" value="between 200 and 500">200-500<br/>
<input type="checkbox" name="price" value=">500">>500<br/>
</div>
<center>
<input type="submit" value="Search" style="text-decoration: blinkstyle;background-color: black; font-size: 25px;color:white;"></center>
</form>
</td>
<td style="width:763px;">
<table>
<%

List arrayList=(List)request.getAttribute("list");
Iterator iterator=arrayList.iterator();
while(iterator.hasNext())
{
	product ob=(product)iterator.next();
	out.println("<tr><td style=\"border:1px \"><a class=option href=\"productView.jsp?item="+ob.getId()+"\"><img src=\"images/pic"+ob.getId()+".jpg\" style=\"width:225px;height:225px\"><br/>"+ob.getName()+"<br/><b> Rs "+ob.getPrice()+"</b></td></a>");
	if(!iterator.hasNext())
		break;
	ob=(product)iterator.next();
	out.println("<td style=\"border:1px \"><a class=option href=\"productView.jsp?item="+ob.getId()+"\"><img src=\"images/pic"+ob.getId()+".jpg\" style=\"width:225px;height:225px\"><br/>"+ob.getName()+"<br/><b> Rs "+ob.getPrice()+"</b></td></a>");
	if(!iterator.hasNext())
	break;
	ob=(product)iterator.next();
	out.println("<td style=\"border:1px \"><a class=option href=\"productView.jsp?item="+ob.getId()+"\"><img src=\"images/pic"+ob.getId()+".jpg\" style=\"width:225px;height:225px\"><br/>"+ob.getName()+"<br/><b> Rs "+ob.getPrice()+"</b></td></a></tr>");
	
}
out.println("</table>");
if(request.getAttribute("page")!=null)
{
		int p=(Integer)request.getAttribute("page");
		out.print("<center><br><a style=font-size:30px;background-color:black;color:white; class=option href=shop?page="+p+">Next</a></center><br>");
}
else
{
	
}

%>

</div>
</td>
</table>

</table>
<hr/>
<jsp:include page="footer.html"/>
</div>
</body>
</html>