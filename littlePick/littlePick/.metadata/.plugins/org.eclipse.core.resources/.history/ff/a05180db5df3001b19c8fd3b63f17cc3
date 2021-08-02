package com.littlePick.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	
	// 회원 수정
	@RequestMapping("memberUpdate.do")
	public String updateMember(AdminVO vo) {
		adminService.updateAdminMember(vo);
		return "redirect:admin_member.do";
	}
	
	// 회원 수정 화면
	@RequestMapping("admin_memberinfo.do")
	public void adminMemberList(AdminVO vo,Model m) {
		AdminVO member = adminService.viewAdminMember(vo);
		m.addAttribute("member", member);
	}
	
	
	
	
	// 상품 목록
	@RequestMapping("admin_product.do")
	public void adminProductList(Model m) {
		List<AdminVO> productList = adminService.productList();
	System.out.println(productList.get(0).getProduct_name());
		m.addAttribute("productList", productList);
	}
/*	
	// 게시글 삭제
	@RequestMapping(value = "/delete")
	public String ajaxTest(HttpServletRequest request) {
		
		String[] ajaxMsg = request.getParameterValues("valueArr");
		int size = ajaxMsg.length;
		
		return "redirect:list";
		
	}
	*/
	//회원 추가
	@RequestMapping("memberWrite.do")
	public void insertMember(AdminVO vo) {
		adminService.insertAdminMember(vo);
	}
	
	//회원 삭제
	@RequestMapping("memberDelete.do")
	public String deleteMember(HttpServletRequest httpServletRequest, AdminVO vo) {
		vo.setUser_email(httpServletRequest.getParameter("user_email"));
		adminService.deleteAdminMember(vo);
		return "redirect:admin_member.do";
	}
	
//	@RequestMapping("1_register.do")
//	public String registerMember(AdminVO vo) {
//		return "1_register.do";
//	}
	
	// 상품 추가 페이지 이동
	@RequestMapping("admin_productinsert.do")
	public void admin_productinsert() {
	}
	
	
	// 상품 추가
		@RequestMapping("productInsert.do")
		public String insertProduct(AdminVO vo) {
		
		System.out.println(vo.getProduct_name());
			adminService.insertAdminMember1(vo);
			return "redirect:admin_product.do";
		}
	
	// 상품 삭제
	@RequestMapping("productDelete.do")
	public String deleteProduct(HttpServletRequest httpServletRequest, AdminVO vo) {
		System.out.println(httpServletRequest.getParameter("product_num"));
		vo.setProduct_num(Integer.parseInt(httpServletRequest.getParameter("product_num")));
		adminService.deleteAdminMember1(vo);
		return "redirect:admin_product.do";
	}
	
	// 상품 수정
	@RequestMapping("productUpdate.do")
	public String updateProduct(AdminVO vo) {
		adminService.updateAdminMember1(vo);
		return "redirect:admin_product.do";
	}
	
	
	// 상품 수정 화면
	@RequestMapping("admin_productinfo.do")
	public void adminProductList(AdminVO vo,Model m) {
		AdminVO product = adminService.product(vo);
		m.addAttribute("product", product);
	}
}
