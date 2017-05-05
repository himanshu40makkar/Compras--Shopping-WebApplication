<%@page import="dao.feedbackdao"%>
<%@page import="model.feedback"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compras</title>
</head>
<body>
<%
feedback feedback=new feedback();
feedback.setOid(Integer.parseInt(request.getParameter("oid")));
feedback.setUid(Integer.parseInt(request.getParameter("uid")));
feedback.setFeedback(request.getParameter("feedback"));
feedbackdao.insertFeedback(feedback);
%>
<script type="text/javascript">
window.alert('Thanks For This Feedback');
</script>
<jsp:include page="index.jsp"></jsp:include>
</body>
</html>