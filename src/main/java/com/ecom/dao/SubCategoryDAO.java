
package com.ecom.dao;

import com.ecom.dao.impl.ISubCategoryDAO;
import com.ecom.model.SubCategory;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository(value = "subCategoryDAO")
@Transactional
public class SubCategoryDAO implements ISubCategoryDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public SubCategory save(SubCategory t) {
        sessionFactory.getCurrentSession().save(t);
        return t;
    }

    @Override
    public SubCategory update(SubCategory t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        return t;
    }

    @Override
    public SubCategory delete(int id) {
        SubCategory c = (SubCategory) sessionFactory.getCurrentSession().load(SubCategory.class, id);
        sessionFactory.getCurrentSession().delete(c);
        return c;
    }

    @Override
    public List<SubCategory> getAll() {
        List<SubCategory> cList = sessionFactory.getCurrentSession().createCriteria(SubCategory.class).list();
        return cList;
    }

    @Override
    public SubCategory getById(int id) {
        SubCategory c = (SubCategory) sessionFactory.getCurrentSession().get(SubCategory.class, id);
        return c;
    }
}
