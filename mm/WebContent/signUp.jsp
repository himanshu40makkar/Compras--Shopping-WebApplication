<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compras:What are you waiting for? </title>
<link rel="stylesheet" href="css/main.css">
<script src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
$("#radio1").click(function(){
		
		$("#text1").hide();
		$("#text1").prop("required",false);
		$("#span1").hide();
		
	});
$("#radio2").click(function(){
	
	$("#text1").show();
	$("#text1").prop("required",true);	
	$("#span1").show();
	
});
		


});
</script>
</head>
<body style="background-color:#white">
<div class="main">
<jsp:include page="header.jsp" />
<hr/>
<fieldset>
<legend>Sign Up</legend>
<form action="welcome.jsp" method="post">
<table>
<tr><td>First Name* : <td><input type="text" name="first" required="required" style="width:10cm;">
<tr><td>Last Name* : <td><input type="text" name="last" required="required" style="width:10cm;">
<tr><td>Contact* : <td><input type="tel" name="contact" maxlength="10" required="required" style="width:10cm;">
<tr><td>Sex : <td><input type="radio" name="sex" value="Male"> Male <input type="radio" name="sex" value="Female"> Female
<tr><td>Date of Birth : <td><input type="date"  name="dob" >
<tr><td>Username* : <td><input type="text" name="username" required="required" style="width:10cm;">
<tr><td>Password* : <td><input type="password" name="password" required="required" style="width:10cm;">
<tr><td>Email Id* : <td><input type="email" name="email" required="required" style="width:10cm;">
<tr><td>Billing Address* : <td><textarea name="bAddress" maxlength="100" rows="4" required="required" style="width:10cm;"></textarea>
<tr><td>Is Shipping Address same as Billing Address ?* <td><input id="radio1" type="radio" name="option" value="Yes">Yes
<input id="radio2" type="radio" name="option" value="No">No
<tr><td><span id="span1">Shipping Address* :</span> <td><textarea id="text1" name="sAddress" maxlength="100" rows="4" required="required"   style="width:10cm;"></textarea>
</table>
<input type="submit" value="Sign Up" style="background-color: black;color:white" class=form1>
</form>
</fieldset>
<hr/>
<jsp:include page="footer.html"></jsp:include>
</div>
</body>
</html>