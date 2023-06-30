package Service;

import Hibernates.HibernateUtil;
import Model.ShareModel;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ShareService {
    public int insertShare(ShareModel shareModel) {
        Session session = HibernateUtil.getFACTORY().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.persist(shareModel);
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
}
