package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.product;

public class shop extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	// TODO Auto-generated method stub
	ArrayList<product> arrayList=(ArrayList<product>) req.getSession().getAttribute("list");
	if(req.getParameter("page")==null)
	{

		if(9>=arrayList.size())
		{
			req.setAttribute("list", arrayList.subList(0,arrayList.size()));
				
		}
		else
			{	
				req.setAttribute("list", arrayList.subList(0,9));
				req.setAttribute("page", 1);
				
			}
		
	
	}
	else
	{
		int page=Integer.parseInt(req.getParameter("page"));
		int s=9*page;
		if(s+9>=arrayList.size())
		{
			req.setAttribute("list", arrayList.subList(s,arrayList.size()));
				
		}else
		{	
			req.setAttribute("list", arrayList.subList(s,s+9));
			req.setAttribute("page", page+1);
			
		}
		
	}
	if(req.getSession().getAttribute("sex")==null)
	{
		req.getSession().setAttribute("sex", "male");
	}
		if(((String)req.getSession().getAttribute("sex")).equalsIgnoreCase("male"))
		req.getRequestDispatcher("shopMen.jsp").forward(req, resp);
		else
			req.getRequestDispatcher("shopWomen.jsp").forward(req, resp);
	
}
}
