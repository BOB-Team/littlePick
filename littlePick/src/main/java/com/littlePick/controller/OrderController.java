package com.littlePick.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.littlePick.domain.ProductVO;
import com.littlePick.service.CartserviceImple;
import com.littlePick.service.OrderServiceImple;


@Controller
public class OrderController {
	

	@Autowired
	CartserviceImple cartService;
	
	
	//주문 페이지 
	@RequestMapping("order.do")
	public ModelAndView order(HttpSession session, ProductVO vo, ModelAndView mv) {		
		// session에 저장된 user_name
		int user_num = (int) session.getAttribute("user_num");
		vo.setUser_num(user_num);
		
		Map<String, Object> map = cartService.cartList(vo);

	
		mv.setViewName("order"); // jsp 파일 이름
		mv.addObject("map", map); // map 변수 저장
		
		return mv;
	}
	
	@Autowired
	OrderServiceImple orderService;
	
	//결제하기 -> 주문 등록 
	@RequestMapping("insertOrder.do")
	public ModelAndView insertOrder(HttpSession session, ProductVO vo, ModelAndView mv) {
		// session에 저장된 user_name 불러오기 
		int user_num = (int)session.getAttribute("user_num");
		vo.setUser_num(user_num);
		
		//주문번호 생성
//		Date nowDate = new Date(); 
		//원하는 데이터 포맷 지정 String 
//		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss"); 
//		String nowDateTime = simpleDateFormat.format(nowDate); 
		
		
		//map에 저장된 배송별 리스트 꺼내기
		Map<String, Object> map = cartService.cartList(vo);
		@SuppressWarnings("unchecked")
		List<ProductVO> listNormal = (List<ProductVO>) map.get("listNormal");
		@SuppressWarnings("unchecked")
		List<ProductVO> listStar = (List<ProductVO>) map.get("listStar");
		
		System.out.println("일반배송 리스트 사이즈"+listNormal.size());
		System.out.println("샛별배송 리스트 사이즈"+listStar.size());
		
		vo.setOrder_state("결제 완료");
		vo.setTotal_account((int)map.get("total_account"));
		
		if(listNormal != null) {
			//주문번호 : 회원번호 + 배송타입 + 주문날짜시간
//			int order_num = Integer.parseInt(user_num+listNormal.get(0).getDelivery_num()+nowDateTime);
//			
//			order_num, product_num, product_count,stock
					
			vo.setDelivery_type("일반 배송");
			vo.setOrder_address(listNormal.get(0).getUser_address());
			orderService.insertOrderInfo(vo);
			//orderService.orderInfoDetails(vo);
		}
		
		if(listStar != null) {
			//주문번호 : 회원번호 + 배송타입 + 주문날짜시간
//			int order_num = Integer.parseInt(user_num+listStar.get(0).getDelivery_num()+nowDateTime);
//			vo.setOrder_num(order_num);
			
			vo.setDelivery_type("샛별 배송");
			vo.setOrder_address(listStar.get(0).getUser_address());
			orderService.insertOrderInfo(vo);
			//orderService.orderInfoDetails(vo);
		}
		
//		//장바구니 삭제
//		cartService.cartAllDelete(user_num);
		
		mv.setViewName("orderList");
//		mv.addObject("order", ll);
		
		return mv;

	}
	

}
