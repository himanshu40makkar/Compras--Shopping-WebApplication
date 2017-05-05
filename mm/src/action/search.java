package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.productdao;

public class search extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	// TODO Auto-generated method stub
	String search=req.getParameter("search");
	ArrayList al=null;
	try {
		al=productdao.searchoption(search);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	HttpSession  httpSession=req.getSession();
	httpSession.setAttribute("list", al);
	req.getRequestDispatcher("/shop").forward(req, resp);
}
}
