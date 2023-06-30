package Servlet;

import Model.FavoriteModel;
import Model.TaiKhoanModel;
import Model.VideoModel;
import Service.FavoriteService;
import Service.VideoService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Date;
import java.util.List;

@WebServlet({ "/trangchu", "/timkiem", "/item", "/yeuthich" })
public class TrangChuServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		VideoService vdser = new VideoService();
		List<VideoModel> listvd = vdser.findAll().subList(0,6);
		req.setAttribute("listvd", listvd);
		req.getRequestDispatcher("/views/trangchu.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = req.getRequestURI();
		if (uri.contains("/timkiem")) {
			String search = req.getParameter("search");
			VideoService vdser = new VideoService();
			List<VideoModel> listvd = vdser.findTenVideo(search);
			HttpSession session = req.getSession();
			session.setAttribute("listvd1", listvd);
			resp.sendRedirect(req.getContextPath() + "/views/home.jsp#/home1");
		} else if (uri.contains("/item")) {
			String item = req.getParameter("item");
			VideoService vdser = new VideoService();
			List<VideoModel> item1 = vdser.findTenVideo(item);
			HttpSession session = req.getSession();
			session.setAttribute("item1", item1);
			resp.sendRedirect(req.getContextPath() + "/views/home.jsp#/item");
		} else if (uri.contains("/yeuthich")) {
			// Lấy thông tin từ request để tạo một đối tượng FavoriteModel mới.
			String itemId = req.getParameter("yeuthich");
			VideoService videoService = new VideoService();
			VideoModel videoModel = videoService.findItem1(itemId);
			TaiKhoanModel taiKhoanModel = (TaiKhoanModel) req.getSession().getAttribute("taiKhoan");
			Date currentDate = new Date();
			FavoriteModel favoriteModel = new FavoriteModel();
			FavoriteService favoriteService = new FavoriteService();

			FavoriteModel test = favoriteService.testSoThich(taiKhoanModel.getId(), videoModel.getId());
			if (test != null) {
				favoriteModel.setId(test.getId());
				favoriteService.delete(favoriteModel);
				
				videoModel.setId(videoModel.getId());
				videoModel.setActive(videoModel.getActive() - 1);
				
				videoService.update(videoModel);
				
			} else {
				taiKhoanModel.setId(taiKhoanModel.getId());
				videoModel.setId(videoModel.getId());
				videoModel.setActive(videoModel.getActive() + 1);
				videoModel.setViews(videoModel.getViews()+1);

				favoriteModel.setTaiKhoanModel(taiKhoanModel);
				favoriteModel.setVideoModel(videoModel);
				favoriteModel.setLikeDate(currentDate);

				videoService.update(videoModel);

				favoriteService.insertFavorite(favoriteModel);

			}

			resp.sendRedirect(req.getContextPath() + "/views/home.jsp#/trangchu");

		}

	}
}
