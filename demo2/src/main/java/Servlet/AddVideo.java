package Servlet;

import Model.VideoModel;
import Service.VideoService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;

@MultipartConfig
@WebServlet("/addvideo")
public class AddVideo  extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/addvideo.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        File dir = new File(req.getServletContext().getRealPath("/files"));
        if (!dir.exists()) {
            dir.mkdirs();
        }

        Part photo = req.getPart("Poster"); // file hình
        File photoFile = new File(dir, photo.getSubmittedFileName());
        photo.write(photoFile.getAbsolutePath());
        String filePath = String.valueOf(photoFile);
        File file = new File(filePath);
        String fileName = file.getName();

        String Link = req.getParameter("Link");
        String Titile = req.getParameter("Titile");
        String Poster = fileName;
        int Views = 0;
        String Description = req.getParameter("Description");
        int Active = 0;

        VideoModel vd = new VideoModel();
        vd.setLink(Link);
        vd.setTitile(Titile);
        vd.setPoster(Poster);
        vd.setViews(Views);
        vd.setDescription(Description);
        vd.setActive(Active);

        VideoService vdser = new VideoService();
        int result = vdser.insert(vd);

        if (result == 1) {
            req.setAttribute("errorMessage", "Thêm thành công");

        } else {
            req.setAttribute("errorMessage", "Thêm thất bại");
        }
        resp.sendRedirect(req.getContextPath() + "/views/Admin.jsp#/addvideo");
    }
}
