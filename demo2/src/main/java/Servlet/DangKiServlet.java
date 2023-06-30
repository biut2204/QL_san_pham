package Servlet;

import Model.TaiKhoanModel;
import Service.TaiKhoanService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/dangki")
public class DangKiServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/dangki.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String Fullname = req.getParameter("Fullname");
        String Email = req.getParameter("Email");
        String MatKhau = req.getParameter("MatKhau");

        TaiKhoanModel tk = new TaiKhoanModel();
        tk.setFullname(Fullname);
        tk.setEmail(Email);
        tk.setMatKhau(MatKhau);
        tk.setVaiTro("nguoi");

        TaiKhoanService tkService = new TaiKhoanService();
        int result = tkService.insert(tk);

        if (result == 1) {
            req.setAttribute("errorMessage", "Đăng kí thành công");

        } else {
            req.setAttribute("errorMessage", "Đăng kí thất bại");
        }
        req.getRequestDispatcher("/views/dangki.jsp").forward(req, resp);

    }
}
