package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.LoginDao;
import com.model.Login;

@Service
public class LoginService {

	@Autowired
	private LoginDao loginDao;
	
	public List<Login> get(String e, String p){
		
		List<Login> login = this.loginDao.get(e, p);
		
		return login;
	}
	
}
