package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Homectrl {

	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/forgot-password")
	public String forgot() {
		return "forgot-password";
	}
	
	@RequestMapping("/reset-password")
	public String reset() {
		return "reset-password";
	}
	
	@RequestMapping("/registration")
	public String register() {
		return "registration";
	}
	
}
