package Servlet;

import Model.TaiKhoanModel;
import Service.TaiKhoanService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.io.IOException;
import java.util.Properties;

@WebServlet({ "/thongtin", "/dangxuat", "/doimatkhau", "/quenmatkhau" })
public class ThongTinServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		TaiKhoanModel taiKhoan = (TaiKhoanModel) req.getSession().getAttribute("taiKhoan");
//        if (taiKhoan == null) {
//            resp.sendRedirect(req.getContextPath() + "/dangnhap");
//            return;
//        }
//        req.setAttribute("taiKhoan", taiKhoan);

		TaiKhoanModel taiKhoan = (TaiKhoanModel) req.getSession().getAttribute("taiKhoan");
		req.getRequestDispatcher("/views/thongtin.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = req.getRequestURI();
		if (uri.contains("/dangxuat")) {
			HttpSession session = req.getSession();
			session.removeAttribute("taiKhoan");
			session.invalidate();
			resp.sendRedirect(req.getContextPath() + "/views/home.jsp#/trangchu");
		} else if (uri.contains("/doimatkhau")) {
			TaiKhoanModel taiKhoan = (TaiKhoanModel) req.getSession().getAttribute("taiKhoan");
			String mk1 = taiKhoan.getMatKhau();
			String MatKhau1 = req.getParameter("MatKhau1");
			String MatKhau2 = req.getParameter("MatKhau2");
			String MatKhau3 = req.getParameter("MatKhau3");

			if (!mk1.equals(MatKhau1)) {
				req.setAttribute("error", "Mật khẩu cũ không đúng");
			} else if (!MatKhau2.equals(MatKhau3)) {
				req.setAttribute("error", "Mật khẩu mới không trùng nhau");
			} else {
				TaiKhoanModel tk = new TaiKhoanModel();
				tk.setId(taiKhoan.getId());
				tk.setEmail(taiKhoan.getEmail());
				tk.setMatKhau(MatKhau3);
				tk.setFullname(taiKhoan.getFullname());
				tk.setVaiTro(taiKhoan.getVaiTro());
				TaiKhoanService tkSr = new TaiKhoanService();
				int result = tkSr.update(tk);
				if (result == 1) {
					req.setAttribute("error", "Đổi thành công");
				} else {
					req.setAttribute("error", "Đổi thất bại");
				}
				req.getRequestDispatcher("/views/doimk.jsp").forward(req, resp);
			}
			req.getRequestDispatcher("/views/home.jsp#/doimatkhau").forward(req, resp);
		} else if (uri.contains("/quenmatkhau")) {
			String email = req.getParameter("Email");
			TaiKhoanService tkSr = new TaiKhoanService();
			boolean check = tkSr.checkEmailExists(email);
			if (check == false) {
				req.setAttribute("message", "Email không tồn tại");
				req.getRequestDispatcher("/views/quenmk.jsp").forward(req, resp);
			} else {
				try {
					Properties p = new Properties();
					p.put("mail.smtp.auth", "true");
					p.put("mail.smtp.starttls.enable", "true");
					p.put("mail.smtp.ssl.protocols", "TLSv1.2");
					p.put("mail.smtp.host", "smtp.gmail.com");
					p.put("mail.smtp.port", 587);
					p.put("mail.debug", "true");

					Session s = Session.getDefaultInstance(p, new javax.mail.Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication("bangncph25155@gmail.com", "dhldogrthhsyvmic");
						}
					});

					MimeMessage message = new MimeMessage(s);
					message.setFrom(new InternetAddress("bangncph25155@gmail.com"));
					String em = "bangncph25155@gmail.com";
					message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(em));
					String subject = "Mật khẩu mới của bạn";
					message.setSubject(subject);
					
					int min = 100000;
					int max = 999999;
					int randomNumber = (int) (Math.random() * (max - min + 1) + min);
					
					TaiKhoanService tkService = new TaiKhoanService();
					TaiKhoanModel taiKhoan = tkService.findByEmail(email);
					TaiKhoanModel tk = new TaiKhoanModel();
					tk.setId(taiKhoan.getId());
					tk.setEmail(taiKhoan.getEmail());
					tk.setMatKhau(String.valueOf(randomNumber));
					tk.setFullname(taiKhoan.getFullname());
					tk.setVaiTro(taiKhoan.getVaiTro());
					tkService.update(tk);
					
					String content = String.valueOf(randomNumber);
					
					MimeMultipart mimeMultipart = new MimeMultipart();
					MimeBodyPart mimeBodyPart = new MimeBodyPart();
					mimeBodyPart.setContent(content, "text/html;chartset=utf-8");
					mimeMultipart.addBodyPart(mimeBodyPart);

					message.setContent(mimeMultipart);
					Transport.send(message);
					req.setAttribute("message", "Gửi thành công");
				} catch (Exception e) {
					// TODO: handle exception
					req.setAttribute("message", "Gửi xịt");
				}
				req.getRequestDispatcher("/views/quenmk.jsp").forward(req, resp);
			}
		}

	}
}
