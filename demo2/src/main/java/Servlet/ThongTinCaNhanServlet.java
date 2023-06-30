package Servlet;

import Model.TaiKhoanModel;
import Model.VideoModel;
import Service.FavoriteService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/thongtincanhan")
public class ThongTinCaNhanServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		TaiKhoanModel taiKhoan = (TaiKhoanModel) req.getSession().getAttribute("taiKhoan");
		FavoriteService faService = new FavoriteService();
		List<VideoModel> favoriteModels = faService.findTenVideo1(taiKhoan.getId());
		req.setAttribute("listvd", favoriteModels);
		req.getRequestDispatcher("/views/thongtincanhan.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
