<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compras:What are you waiting for? </title>
<link rel="stylesheet" href="css/main.css">
</head>
<body style="background-color:white">
<div class="main">
<jsp:include page="header.jsp" />
<hr/>
<div style="text-align:center;">
SIGN UP TO KOOVS.COM AND ENJOY <b>RS. 500 OFF*</b> YOUR FIRST PURCHASE
<input type="text" name="email" placeholder="Enter your email id*" style="font-size:20px ">
</div>
<hr/>
<fieldset>
<legend >Login</legend>
<%
if(session.getAttribute("user")!=null)
	response.sendRedirect("index.jsp");
%>
<div class="login" method="post">
<form action="validate.jsp">
<center>
<table>
	<tr>
		<td>Userame or Email-Id :<br/><br/> </td>
		<td><input type="text" placeholder="Username or Email-Id" name="uname"><br/><br/></td>
	</tr>
	<tr>
		<td>Password : </td>
		<td><input type="password"  placeholder="Password" name="pasword">
		</td>
	</tr>
</table>	
<br/>
 <input class="form1" style="background-color: black;color:white" type="submit" value="Sign In">
or
 <input class="form1" style="background-color: black;color:white" type="submit" value="Forget Password">
</center>
</form>
</div>
</fieldset>
<hr/>
<jsp:include page="footer.html"></jsp:include>
</div>
</body>
</html>