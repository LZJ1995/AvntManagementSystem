package org.gac.lzj.avnt.dao;
import org.gac.lzj.avnt.entities.StaffInfoEntity;
import org.hibernate.LockMode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

;


/**
 * 员工信息
 */
@Repository
public class StaffinfoDao {
    @Autowired
    private SessionFactory sessionFactory;

    public Session getSessionFactory() {
        return sessionFactory.getCurrentSession();
    }

    /*
    * 登录查询
    * */
    public StaffInfoEntity queryCheckLogin(String Account, String Password){
        String hql= "from StaffInfoEntity  where staffAccount=:Account and staffPassword=:password";
        return (StaffInfoEntity) getSessionFactory().createQuery(hql).setParameter("Account",Account).setParameter("password",Password).uniqueResult();
    }
}
