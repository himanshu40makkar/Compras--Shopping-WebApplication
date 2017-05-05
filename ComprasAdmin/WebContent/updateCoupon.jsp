<%@page import="dao.coupondao"%>
<%@page import="model.coupon"%>
<%@page import="dao.productdao"%>
<%@page import="model.product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
coupon coupon=new coupon();

coupon.setDiscount(Integer.parseInt(request.getParameter("discount")));
coupon.setCode(request.getParameter("code"));
if(request.getParameter("id")==null)
{
	coupondao.createCoupon(coupon);
}else
{
	coupon.setId(Integer.parseInt(request.getParameter("id")));
	coupondao.updateCoupon(coupon);
}
response.sendRedirect("coupon.jsp");
%>
</body>
</html>