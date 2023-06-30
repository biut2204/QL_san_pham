package Service;

import Hibernates.HibernateUtil;
import Model.VideoModel;
import jakarta.persistence.NoResultException;
import jakarta.persistence.TypedQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class VideoService {
    public int insert(VideoModel videoModel) {
        int result = -1;
        Transaction tran = null;
        try (Session session = HibernateUtil.getFACTORY().openSession()) {
            tran = session.beginTransaction();
            session.persist(videoModel);
            tran.commit();
            result = 1;
        } catch (Exception e) {
            if (tran != null) {
                tran.rollback();
            }
            e.printStackTrace();
        }
        return result;
    }

    public int update(VideoModel videoModel) {
        int result = -1;
        Transaction tran = null;
        try (Session session = HibernateUtil.getFACTORY().openSession()) {
            tran = session.beginTransaction();
            session.update(videoModel);
            tran.commit();
            result = 1;
        } catch (Exception e) {
            if (tran != null) {
                tran.rollback();
            }
            e.printStackTrace();
        }
        return result;
    }

    public List<VideoModel> findAll() {
        List<VideoModel> videos = new ArrayList<>();
        try (Session session = HibernateUtil.getFACTORY().openSession()) {
            TypedQuery<VideoModel> query = session.createQuery("SELECT u FROM VideoModel u", VideoModel.class);
            videos = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return videos;
    }


    public List<VideoModel> findTenVideo(String ten) {
        List<VideoModel> videos = new ArrayList<>();
        try (Session session = HibernateUtil.getFACTORY().openSession()) {
            TypedQuery<VideoModel> query = session.createQuery("SELECT vd FROM VideoModel vd WHERE vd.Titile LIKE :ten", VideoModel.class);
            query.setParameter("ten", "%" + ten + "%");
            videos = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return videos;
    }

    public List<VideoModel> findItem(String item) {
        List<VideoModel> videos = new ArrayList<>();
        try (Session session = HibernateUtil.getFACTORY().openSession()) {
            TypedQuery<VideoModel> query = session.createQuery("SELECT vd FROM VideoModel vd WHERE vd.Titile LIKE :item", VideoModel.class);
            query.setParameter("item", item);
            videos = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return videos;
    }

    public VideoModel findItem1(String item) {
        try (Session session = HibernateUtil.getFACTORY().openSession()){
            String query = "SELECT vd FROM VideoModel vd WHERE vd.Titile = :item";
            TypedQuery<VideoModel> typedQuery = session.createQuery(query, VideoModel.class);
            typedQuery.setParameter("item", item);
            return typedQuery.getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }

}
