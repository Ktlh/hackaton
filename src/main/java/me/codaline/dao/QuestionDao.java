package me.codaline.dao;


import me.codaline.model.answers;
import me.codaline.model.questions;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class QuestionDao {

    @Autowired
    SessionFactory sessionFactory;

    public answers getAnswerById(int id) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(answers.class);
        criteria.add(Restrictions.eq("Id", id));
//        Query query = sessionFactory.getCurrentSession().createQuery("select from Users as u where u.email =:email");
//        query.setParameter("email", email);
        return (answers) criteria.uniqueResult();
    }
    public List<questions> getQuestions(){
        return sessionFactory.getCurrentSession().createCriteria(questions.class).addOrder(Property.forName("id_question").asc()) .list();
    }
}
