package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.coupondao;
@WebServlet(urlPatterns={"/deletecoupon"})
public class deletecoupon extends HttpServlet {
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	// TODO Auto-generated method stub
	coupondao.deleteCoupon(Integer.parseInt(req.getParameter("cid")));
	resp.sendRedirect("coupon.jsp");
}
}
