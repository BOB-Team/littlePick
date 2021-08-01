package com.littlePick.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.littlePick.domain.AdminVO;
import com.littlePick.service.AdminMemberServiceImpl;


@Controller
public class AdminController {
	

	@Autowired
	AdminMemberServiceImpl adminService;

	/*
	 * @RequestMapping("{url}.do") public String sample(@PathVariable String url) {
	 * return url; }
	 */
	
	// 회원 목록
	@RequestMapping("admin_member.do")
	public void adminMemberList(Model m) {
		List<AdminVO> memberList = adminService.memberList();
		m.addAttribute("memberList",memberList);
	}
	
	
	
	
	
	
}
