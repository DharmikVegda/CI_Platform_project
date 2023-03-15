package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ForgotPasswordDao;
import com.model.Login;

@Service
public class ForgotService {
	@Autowired
	private ForgotPasswordDao forgotPasswordDao;

	public List<Login> getEmail(String e) {
		
		List<Login> user = this.forgotPasswordDao.getEmail(e);
		return user;
	}
}
