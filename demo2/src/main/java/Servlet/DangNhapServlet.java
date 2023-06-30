package Servlet;

import Model.TaiKhoanModel;
import Service.TaiKhoanService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/dangnhap")
public class DangNhapServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/dangnhap.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String Email = req.getParameter("Email");
        String MatKhau = req.getParameter("MatKhau");
        TaiKhoanService tkService = new TaiKhoanService();
        TaiKhoanModel taiKhoan = tkService.findByEmailAndMatKhau(Email, MatKhau);
        if (taiKhoan != null) {
            String vaitro = taiKhoan.getVaiTro();
            if (vaitro.equals("nguoi")) {
                HttpSession session = req.getSession();
                session.setAttribute("taiKhoan", taiKhoan);
                req.setAttribute("errorMessage", "Đăng nhập thành công");
                resp.sendRedirect(req.getContextPath() + "/views/home.jsp#/trangchu");
            } else if (vaitro.equals("admin")) {
                HttpSession session = req.getSession();
                session.setAttribute("taiKhoan", taiKhoan);
                req.setAttribute("errorMessage", "Đăng nhập thành công");
                resp.sendRedirect(req.getContextPath() + "/views/Admin.jsp#/trangchu");
            }

        } else {
            req.setAttribute("errorMessage", "Sai tài khoản hoặc mật khẩu");
            req.getRequestDispatcher("/views/dangnhap.jsp").forward(req, resp);

        }
    }
}
