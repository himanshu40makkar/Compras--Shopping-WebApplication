<%@page import="dao.coupondao"%>
<%
String code=request.getParameter("code");
int price=(Integer)session.getAttribute("price");
int disc=coupondao.valiateCode(code);

if(disc==0)
{
out.println(0);
}
else
{
	int fdisc=(disc*price)/100;
	int nprice=price-fdisc;
	out.println(price-fdisc);
	session.setAttribute("newPrice",nprice);	
}

%>
