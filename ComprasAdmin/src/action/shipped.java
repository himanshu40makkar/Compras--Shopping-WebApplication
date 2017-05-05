package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.orderdao;
@WebServlet(urlPatterns={"/shipped"})
public class shipped extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	// TODO Auto-generated method stub
	
	int oid=Integer.parseInt(req.getParameter("orderid"));
	String status=req.getParameter("status");
	try {if(status.equalsIgnoreCase("shipped"))
	{
		if(orderdao.change2Shipped(oid))
		{
			req.getRequestDispatcher("orderdetails.jsp").forward(req, resp);
		}
	}
	else
		if(status.equalsIgnoreCase("delivered"))
		{
			if(orderdao.change2Delivered(oid))
			{
				req.getRequestDispatcher("orderdetails.jsp").forward(req, resp);
			}	
		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
