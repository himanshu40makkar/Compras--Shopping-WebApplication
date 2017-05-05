<%@page import="dao.userdao"%>
<%@page import="model.user"%>
<html>
<head>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
<%
	user ob=new user();
	ob.setFirst(request.getParameter("first"));
	ob.setLast(request.getParameter("last"));
	ob.setContact(Integer.parseInt(request.getParameter("contact")));
	ob.setSex(request.getParameter("sex"));
	ob.setDate(request.getParameter("dob"));
	ob.setOption(request.getParameter("option"));
	ob.setUsername(request.getParameter("username"));
	ob.setPassword(request.getParameter("password"));
	ob.setEmail(request.getParameter("email"));
	ob.setbAddress(request.getParameter("bAddress"));
	ob.setsAddress(request.getParameter("sAddress"));
	boolean flag= userdao.insert(ob);
	if(flag)
	{     session.setAttribute("user", ob);
		RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
				rd.forward(request,response);
		
	}
	else
		out.println("try again");
%>
</body>
</html>