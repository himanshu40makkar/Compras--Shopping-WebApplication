package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.feedbackdao;
@WebServlet(urlPatterns=("/delete"))
public class feedback extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	// TODO Auto-generated method stub
	int fid=Integer.parseInt(req.getParameter("fid"));
	feedbackdao.delete(fid);
	resp.sendRedirect("feedback.jsp");
}
}
