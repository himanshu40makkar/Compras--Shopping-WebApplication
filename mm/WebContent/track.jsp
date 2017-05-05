<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compras: Track</title>
<link rel="stylesheet" href="css/main.css"> 
</head>
<body style="background-color:white">
<div class="main">
<jsp:include page="header.jsp"/>
<%
if(session.getAttribute("user")==null)
{%>
<jsp:include page="trackguest.jsp"/>
<%
}else{
%>
<jsp:forward page="myorders.jsp"/>
<%} %>
<jsp:include page="footer.html"/>
</div>
</body>
</html>