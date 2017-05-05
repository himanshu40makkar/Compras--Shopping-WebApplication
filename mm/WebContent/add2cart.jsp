<%@page import="dao.productdao"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compras: Item Added</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body style="background-color:white">
<%
ArrayList al=null;
int id=Integer.parseInt(request.getParameter("item"));
// when cart has nothing
if(session.getAttribute("cart")==null)
{
	 al=new ArrayList();
	al.add(id);
}
//when cart already contains some products
else
{
	al=(ArrayList)session.getAttribute("cart");
	al.add(id);
}
session.setAttribute("cart",al);
productdao.deleteStock(id,1);
%>
<div class="main">
<jsp:include page="header.jsp"/><center>
<hr/>Purchase while sitting at Home.
<hr/>
<fieldset style="padding:15%;font-size: 25px">

Your item has been added to cart.<br><br>
<a class="option"  style="background-color: black;color:white" href="index.jsp">Continue Shopping</a><br><br/>
or<br/><br/>
<a  class="option"  style="background-color: black;color:white" href="viewcart.jsp">View Cart</a>
</center></fieldset>
<hr/>
<jsp:include page="footer.html"/>
</div>
</body>
</html>