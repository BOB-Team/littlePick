package com.littlePick.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.littlePick.domain.ProductVO;
import com.littlePick.service.CartserviceImple;

@Controller
public class CartController {

	@Autowired
	CartserviceImple cartService;

	// 장바구니 추가
	@RequestMapping(value = "cartInsert.do")
	public String cartInsert(ProductVO vo, HttpSession session) {
		System.out.println("Controller : cartInsert() 호출");
		if(session.getAttribute("user_num") == null) {
			return "redirect:1_login.do";
		}
		else {
			int user_num = (int) session.getAttribute("user_num");
		
			vo.setUser_num(user_num);

//		System.out.println("회원번호 : " + vo.getUser_num());
//		System.out.println("카트번호: " + vo.getCart_num());
//		System.out.println("상품번호:" + vo.getProduct_num());
//		System.out.println("상품수량:" + vo.getProduct_count());
//		System.out.println("배송번호:" + vo.getDelivery_num());

		// 장바구니에 기존 상품이 있는지 검사
		int count = cartService.cartCount(vo.getProduct_num(), user_num);
		
		// 장바구니 상품이 없으면
		if (count == 0) {
			cartService.cartInsert(vo);
		}
		// 장바구니 상품이 있으면
		else {
			cartService.cartUpdate(vo);
		}
		return "redirect:cartList.do";
		}
	}

	// 장바구니 목록
	@RequestMapping("cartList.do")
	public ModelAndView cartList(HttpSession session, ProductVO vo, ModelAndView mv) {
		// session에 저장된 user_name
		int user_num = (int) session.getAttribute("user_num");
		vo.setUser_num(user_num);
		
		Map<String, Object> map = cartService.cartList(vo);
		
		
		mv.setViewName("cartList"); // jsp 파일 이름
		mv.addObject("user_num", user_num); 
		mv.addObject("map", map); // map 변수 저장
		
		
		return mv;

	}


	// 장바구니 삭제 버튼으로 하나씩 삭제
	@RequestMapping(value = "cartDelete.do", method = RequestMethod.GET)
	public String cartDelete(int cart_num) {
		cartService.cartDelete(cart_num);
		return "redirect:cartList.do";
	}

	// 장바구니 체크 박스로 선택 삭제
	@RequestMapping("cartDeleteList.do")
	@ResponseBody
	public String cartDeleteList(HttpServletRequest request) {
		String message = "실패하였습니다.";
		String[] cart_num_list = request.getParameterValues("cart_num");
		int size = cart_num_list.length;
		System.out.println("cart_num_list의 사이즈 : " + size);
		int[] int_cart_num_list = new int[size];

		// String 배열을 int 배열로 형변화
		for (int i = 0; i < size; i++) {
			int_cart_num_list[i] = Integer.parseInt(cart_num_list[i]);
		}
		
		// cart_num_list에 저장된 값만큼 delete 반복
		for (int i=0; i<size; i++) { 
			 cartService.cartDelete(int_cart_num_list[i]); 
		}		 
		message = "성공하였습니다.";
		return message;
	}
	

}
