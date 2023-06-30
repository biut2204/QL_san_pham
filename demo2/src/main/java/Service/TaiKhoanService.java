package Service;

import Hibernates.HibernateUtil;
import Model.TaiKhoanModel;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class TaiKhoanService {
    public int insert(TaiKhoanModel user) {
        int result = -1;
        Transaction tran = null;
        try (Session session = HibernateUtil.getFACTORY().openSession()) {
            tran = session.beginTransaction();
            session.persist(user);
            tran.commit();
            result = 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public TaiKhoanModel findByEmailAndMatKhau(String email, String matKhau) {
        TaiKhoanModel taiKhoan = null;
        try (Session session = HibernateUtil.getFACTORY().openSession()) {
            Query query = session.createQuery("SELECT tk FROM TaiKhoanModel tk WHERE tk.Email = :email AND tk.MatKhau = :matKhau", TaiKhoanModel.class);
            query.setParameter("email", email);
            query.setParameter("matKhau", matKhau);
            taiKhoan = (TaiKhoanModel) query.getSingleResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return taiKhoan;
    }

    public TaiKhoanModel findByEmail(String email) {
        try (Session session = HibernateUtil.getFACTORY().openSession()) {
            String query = "SELECT tk FROM TaiKhoanModel tk WHERE tk.Email = :email";
            TypedQuery<TaiKhoanModel> typedQuery = session.createQuery(query, TaiKhoanModel.class);
            typedQuery.setParameter("email", email);
            TaiKhoanModel taiKhoan = typedQuery.getSingleResult();
            return taiKhoan;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public int update(TaiKhoanModel user) {
        int result = -1;
        try (Session session = HibernateUtil.getFACTORY().openSession()) {
            Transaction transaction = session.beginTransaction();
            session.merge(user);
            transaction.commit();
            result = 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public boolean checkEmailExists(String email) {
        boolean exists = false;
        try (Session session = HibernateUtil.getFACTORY().openSession()) {
            String query = "SELECT tk FROM TaiKhoanModel tk WHERE tk.Email = :email";
            TypedQuery<TaiKhoanModel> typedQuery = session.createQuery(query, TaiKhoanModel.class);
            typedQuery.setParameter("email", email);
            TaiKhoanModel taiKhoan = typedQuery.getSingleResult();
            exists = taiKhoan != null;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return exists;
    }

    public static void main(String[] args) {
        TaiKhoanModel tk = new TaiKhoanModel();
        tk.setFullname("Fullname2");
        tk.setEmail("Email2");
        tk.setMatKhau("MatKhau2");
        tk.setVaiTro("nguoi");

        TaiKhoanService tkService = new TaiKhoanService();
        int result = tkService.insert(tk);

        if (result == 1) {
            System.out.println("Đăng kí thành công");
        } else {
            System.out.println("Đăng kí thất bại");
        }

    }
}
