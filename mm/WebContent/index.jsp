<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>
Compras: What are you waiting for?
</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/main.css">

<script src="js/jquery-1.11.3.min.js"></script>
<script>
$(document).ready(function(){
	$("#id1").hover(function(){
		$(this).css('text-decoration',"underline");
	},function(){
		$(this).css('text-decoration',"none");
			
		
	});
	$("#id3").hover(function(){
		$(this).css('text-decoration',"underline");
		
	},function(){
		$(this).css('text-decoration',"none");
			
		
	});
	$("#id4").hover(function(){
		$(this).css('text-decoration',"underline");
	},function(){
		$(this).css('text-decoration',"none");
			
		
	});
	
	$("#id2").hover(function(){
		$(this).css('text-decoration',"underline");
	},function(){
		$(this).css('text-decoration',"none");
			
		
	});
});
</script>
</head>
<body style="background-color:white">
<div class="main" style="background-color: white">
<jsp:include page="header.jsp" />
<hr/>
<div style="text-align:center;">
<c:choose>
<c:when test="${user!=null}">
You are just few steps away. Choose category. 
</c:when>
<c:otherwise>
SIGN UP TO COMPRAS.COM AND ENJOY <b>RS. 500 OFF*</b> YOUR FIRST PURCHASE
<input type="text" name="email" placeholder="Enter your email id*" style="font-size:20px ">
</c:otherwise>
</c:choose>
</div>
<hr/>
<table>
<tr>
<td>
<div id="id1" style="background-image:url('images/3_AW15_hp_women-web.jpg');text-align:center; padding-top:90%;padding-bottom:3%;width:480px;font-family:courier;font-size:25px;margin-right: 5px  ">
<b><a href="shopWomen" class="option">SHOP WOMEN </a></b>
</div>
</td>
<td> 
<div id="id2" style="text-align:center; background-image:url('images/1_AW15_hp_men-web.jpg');padding-top:90%;padding-bottom:3%;width:480px;font-family:courier;font-size:25px;margin-left:5px ">
<b><a href="shopMen" class="option">SHOP MEN </a></b>
</div>
</td>
</tr>
<tr>
<td colspan="2">
<div style="padding-left:30%;background-image:url('images/independence-day_hp_web.jpg');padding-top:34%;padding-bottom:12.5%;font-size: 25px;font-family:courier;color:white">
<b><span id="id3"><a href="shopWomen" style="color:white;text-decoration: none">Shop Women</a></span>
<span id="id4" style="margin-left:13% "><a href="shopMen" style="color:white;text-decoration: none" >Shop Men</a></span>
</b>
</div>
</td>
</tr>
</table>
<hr/>
<jsp:include page="footer.html"></jsp:include>
</div>
</body>
</html>