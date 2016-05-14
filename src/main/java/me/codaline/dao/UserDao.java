package me.codaline.dao;

import me.codaline.model.Users;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class UserDao {

    @Autowired
    SessionFactory sessionFactory;

    public void save(Users users) {
        sessionFactory.getCurrentSession().save(users);
    }

    public List<Users> getUsers() {
        return sessionFactory.getCurrentSession().createCriteria(Users.class).list();
    }

    public Users getUser(String ip_user) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Users.class);
        criteria.add(Restrictions.eq("ip_user", ip_user));
//        Query query = sessionFactory.getCurrentSession().createQuery("select from Users as u where u.email =:email");
//        query.setParameter("email", email);
        return (Users) criteria.uniqueResult();
    }
}
