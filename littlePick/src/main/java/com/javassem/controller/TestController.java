package com.javassem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	@RequestMapping("register.do")
	public void register() {
		System.out.println("register 호출 ");
	}
	
	
	@RequestMapping("login.do")
	public void login() {
		System.out.println("login 호출 ");
	}

}
