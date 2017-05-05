package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.adminDao;
import model.admin;
@WebServlet(urlPatterns={"/login"})
public class login extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	admin admin=new admin();
	admin.setUsername(req.getParameter("username"));
	admin.setPassword(req.getParameter("password"));
	try {
		if(adminDao.validateuser(admin))
			req.getRequestDispatcher("post.jsp").forward(req, resp);
		else
		{ 
			PrintWriter out=resp.getWriter();
			out.println("<div style=background-color:white;color:black; >Invalid Username or Password</div>");
			req.getRequestDispatcher("index.jsp").include(req, resp);
		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
}
