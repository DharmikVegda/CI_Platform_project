package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Login {

	@Id
	private String email;
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	private String password;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "Login [email=" + email + ", password=" + password + "]";
	}
	
	public Login(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
}
