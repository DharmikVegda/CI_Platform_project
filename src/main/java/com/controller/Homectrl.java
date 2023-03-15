package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Login;
import com.service.ForgotService;
import com.service.LoginService;

@Controller
public class Homectrl {

	@Autowired
	private LoginService loginservice;
	@Autowired
	private ForgotService forgotservice;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam(value="msg", required = false) String massage, Model m) {
		m.addAttribute("msg",massage);
		return "login";
	}
	
	@RequestMapping("/loginhandler")
	public String loginhandler(@RequestParam("email") String email, @RequestParam("password") String pass, Model m, HttpSession session) {
	
		List<Login> login = this.loginservice.get(email, pass);
		/* System.out.println(login); */
		if(login.isEmpty()) {
			m.addAttribute("msg","Invalid User");
			return "redirect:login";
		}else {
			session.setAttribute("email", email);
			session.setAttribute("password", pass);
			return "redirect:registration";
		} 
		
	}
	
	@RequestMapping("/forgot-password")
	public String forgot() {
		return "forgot-password";
	}
	
	@RequestMapping("/forgotPasswordHandler")
	public String forgotPassword(@RequestParam("email") String email) {
		List<Login> user = this.forgotservice.getEmail(email);
		System.out.println(user);
		if(user.isEmpty()) {
			System.out.println("This email is not exists");
		}
		return "forgot-password";
	}
	
	@RequestMapping("/reset-password")
	public String reset() {
		return "reset-password";
	}
	
	@RequestMapping("/registration")
	public String register(HttpSession session) {
		/*
		 * String email = (String) session.getAttribute("email"); String password =
		 * (String) session.getAttribute("password"); System.out.println(email);
		 * System.out.println(password);
		 */
		return "registration";
	}
	
	
	  @RequestMapping("/registerHandler") public String
	  newUser(@RequestParam("firstname") String firstname,
	  
	  @RequestParam("lastname") String lastname,
	  
	  @RequestParam("phonenumber") String phonenumber,
	  
	  @RequestParam("email") String email,
	  
	  @RequestParam("password") String password
	   ) { 
		 return "registration"; }
	 
	
}
