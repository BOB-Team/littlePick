package com.littlePick.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		// 장바구니 목록을 map에 저장 
		Map<String, Object> map = cartService.cartList(vo);

		mv.setViewName("order"); // jsp 파일 이름
		mv.addObject("map", map); // map 변수 저장
		
		return mv;
	}
	
	@Autowired
	OrderServiceImple orderService;
	
	//결제하기 -> 주문 등록 
	@RequestMapping("insertOrder.do")
	public String insertOrder(HttpSession session, ProductVO vo, ModelAndView mv) {
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
		
		vo.setOrder_state("결제 완료");
		vo.setTotal_account((int)map.get("total_account"));
		
		//포인트 적립
		vo.setUser_point((int)map.get("point"));
		orderService.updatePoint(vo);
		


		//일반배송 리스트 확인 및 주문 정보 입력 
		if(listNormal != null) {
			//주문번호 : 회원번호 + 배송타입 + 주문날짜시간
//			int order_num = Integer.parseInt(user_num+listNormal.get(0).getDelivery_num()+nowDateTime);
			vo.setDelivery_num(1);			
			vo.setDelivery_type("일반배송");
			vo.setOrder_address(listNormal.get(0).getUser_address());
			System.out.println("=====================일반배송 리스트 호출");
			orderService.insertOrderInfo(vo);
			orderService.insertOrderList(vo);
			for (int i=0; i<listNormal.size(); i++) {
				//재고 수량 변경 
				orderService.updateStock(listNormal.get(i));	
			}

		}
		
		//샛별배송 리스트 확인 및 주문 정보 입력 
		if(listStar != null) {
			//주문번호 : 회원번호 + 배송타입 + 주문날짜시간
//			int order_num = Integer.parseInt(user_num+listStar.get(0).getDelivery_num()+nowDateTime);
//			vo.setOrder_num(order_num);
			vo.setDelivery_num(3);
			vo.setDelivery_type("샛별배송");
			vo.setOrder_address(listStar.get(0).getUser_address());
			System.out.println("======================샛별배송 리스트 호출");
			orderService.insertOrderInfo(vo);
			orderService.insertOrderList(vo);
			for (int i=0; i<listStar.size(); i++) {
				//재고 수량 변경 
				orderService.updateStock(listStar.get(i));	
			}
			

		}
		
		//장바구니 삭제
		//cartService.cartAllDelete(user_num);
		
//		mv.setViewName("orderList");
//		mv.addObject("order", ll);
		
		return "redirect:orderList.do";

	}
	
	//주문 목록 
	@RequestMapping("orderList.do")
	public Model orderList(HttpSession session, ProductVO vo, Model m) {
		// session에 저장된 user_name
		int user_num = (int) session.getAttribute("user_num");
		vo.setUser_num(user_num);
		
		List<ProductVO> list = orderService.orderList(vo);
		
		m.addAttribute("list", list);
		
		return m;

	}
	
	//주문 상세 
	@RequestMapping(value="orderDetail.do")
	public Model orderDetail(HttpSession session, HttpServletRequest request,ProductVO vo, Model m) {
		//session에 저장된 user_name
		int user_num = (int) session.getAttribute("user_num");
		//parameter 형변환
		int order_num =Integer.parseInt(request.getParameter("order_num"));
		
		vo.setUser_num(user_num);
		vo.setOrder_num(order_num);
		List<ProductVO> list = orderService.orderDetail(vo);
		m.addAttribute("orderDetail", list);
		
		
		return m;
	}
	
	

}
