package com.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.model.Login;

@Component
public class LoginDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	private SessionFactory factory;
	
	// get email and password
	public List<Login> get(String e, String p){
		Session s = factory.openSession();
		Query q = s.createQuery("from Login where email= :x and password= :y");
		q.setParameter("x", e);
		q.setParameter("y", p);
		return q.getResultList();
	}
}
