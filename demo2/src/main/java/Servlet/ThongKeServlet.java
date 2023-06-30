package Servlet;

import Model.TaiKhoanModel;
import Service.FavoriteService;
import Service.TaiKhoanService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/thongkeuser")
public class ThongKeServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		FavoriteService favoriteService = new FavoriteService();
		List<TaiKhoanModel> listtk = favoriteService.ThongKeUser();
		HttpSession session = req.getSession();
		session.setAttribute("listtk", listtk);
		req.getRequestDispatcher("/views/thongKeUser.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		TaiKhoanService tkKhoanService = new TaiKhoanService();
		String email = req.getParameter("email");
		TaiKhoanModel taiKhoan = tkKhoanService.findByEmail(email);
		HttpSession session = req.getSession();
		session.setAttribute("edittk", taiKhoan);
	    resp.sendRedirect(req.getContextPath() + "/views/Admin.jsp#/thongkeuser");
	}
}
