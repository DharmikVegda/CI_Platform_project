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
public class ForgotPasswordDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Autowired
	private SessionFactory factory;
	
	// get email
	public List<Login> getEmail(String e){
		
		Session s = factory.openSession();
		Query q = s.createQuery("from Login where email= :x");
		q.setParameter("x", e);
		return q.getResultList();
	}
	
	//save data
	
}
