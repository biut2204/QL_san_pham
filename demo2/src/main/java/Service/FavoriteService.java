package Service;

import Hibernates.HibernateUtil;
import Model.FavoriteModel;
import Model.TaiKhoanModel;
import Model.VideoModel;
import jakarta.persistence.NoResultException;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;
import java.util.UUID;

public class FavoriteService {
    public int insertFavorite(FavoriteModel favorite) {
        Session session = HibernateUtil.getFACTORY().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.persist(favorite);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            return -1;
        } finally {
            session.close();
        }
        return 1;
    }

    public int delete(FavoriteModel favoriteModel) {
        Session session = HibernateUtil.getFACTORY().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            FavoriteModel mergedUser = (FavoriteModel) session.merge(favoriteModel);
            session.delete(mergedUser);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            return -1;
        } finally {
            session.close();
        }
        return 1;
    }

    public FavoriteModel testSoThich(UUID tk, UUID vd) {
        Session session = HibernateUtil.getFACTORY().openSession();
        try {
            String query = "SELECT fa FROM FavoriteModel fa WHERE fa.taiKhoanModel.Id = :tk AND fa.videoModel.Id = :vd";
            TypedQuery<FavoriteModel> typedQuery = session.createQuery(query, FavoriteModel.class);
            typedQuery.setParameter("tk", tk);
            typedQuery.setParameter("vd", vd);
            return typedQuery.getSingleResult();
        } catch (NoResultException e) {
            return null;
        } finally {
                session.close();
        }
    }


    public List<VideoModel> findTenVideo1(UUID id) {
        Session session = HibernateUtil.getFACTORY().openSession();
        try {
            String hql = "SELECT fa.videoModel FROM FavoriteModel fa WHERE fa.taiKhoanModel.Id = :id";
            Query query = session.createQuery(hql);
            query.setParameter("id", id);
            List<VideoModel> listvd = query.getResultList();
            return listvd;
        } finally {
            session.close();
        }
    }

    public List<TaiKhoanModel> ThongKeUser() {
        Session session = HibernateUtil.getFACTORY().openSession();
        List<TaiKhoanModel> users = null;
        try {
            Query query = session.createQuery("FROM TaiKhoanModel");
            users = query.getResultList();
        } catch (Exception e) {
            // TODO: handle exception
        } finally {
            session.close();
        }
        return users;
    }

    public List<VideoModel> findVideoNotFa() {
        Session session = HibernateUtil.getFACTORY().openSession();
        try {
            String hql = "SELECT vd FROM VideoModel vd WHERE vd.favoriteModels IS EMPTY";
            Query query = session.createQuery(hql);
            List<VideoModel> listvd = query.getResultList();
            return listvd;
        }finally {
            session.close();
        }
    }

    public List<VideoModel> findVideoFa() {
        Session session = HibernateUtil.getFACTORY().openSession();
        try {
            String hql = "SELECT vd FROM VideoModel vd WHERE vd.favoriteModels IS NOT EMPTY";
            Query query = session.createQuery(hql);
            List<VideoModel> listvd = query.getResultList();
            return listvd;
        } finally {
            session.close();
        }
    }

}
