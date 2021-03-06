
package com.ecom.dao;

import com.ecom.dao.impl.ITermsAndConditionsDAO;
import com.ecom.model.TermsAndCondition;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author HP
 */
@Repository(value = "TermsAndConditionsDAO")
@Transactional
public class TermsAndConditionsDAO implements ITermsAndConditionsDAO{
    
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public TermsAndCondition save(TermsAndCondition t) {
        sessionFactory.getCurrentSession().save(t);
        return t;
    }

    @Override
    public TermsAndCondition update(TermsAndCondition t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        return t;
    }

    @Override
    public TermsAndCondition delete(int id) {
    TermsAndCondition c = (TermsAndCondition) sessionFactory.getCurrentSession().load(TermsAndCondition.class, id);
    sessionFactory.getCurrentSession().delete(c);
    return c;      
    }

    @Override
    public List<TermsAndCondition> getAll() {
    List<TermsAndCondition> cList = sessionFactory.getCurrentSession().createCriteria(TermsAndCondition.class).list();
        return cList;    
    }

    @Override
    public TermsAndCondition getById(int id) {
    TermsAndCondition c = (TermsAndCondition) sessionFactory.getCurrentSession().get(TermsAndCondition.class, id);
       return c;    
    }

    
}


