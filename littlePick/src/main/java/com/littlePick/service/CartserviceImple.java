package com.littlePick.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.littlePick.dao.CartDAOImple;
import com.littlePick.domain.ProductVO;

@Service
public class CartserviceImple implements CartService {
	
	@Autowired
	CartDAOImple cartDAO;
	
	//장바구니 추가
	public void cartInsert(ProductVO vo) {
		cartDAO.cartInsert(vo);
	}
	
	//장바구니 목록
	public Map<String, Object> cartList(ProductVO vo) {
		//map 객체 선언
		Map<String, Object> map = new HashMap<String, Object>();
		
		// 배송 유형별 장바구니 리스트 
		List<ProductVO> listNormal = cartDAO.cartListNormal(vo);
		List<ProductVO> listStar = cartDAO.cartListStar(vo);
		/*
		 * System.out.println("배송번호"+listNormal.get(0).getDelivery_num());
		 * System.out.println("배송번호"+listStar.get(0).getDelivery_num());
		 * System.out.println("배송번호"+listStar.get(1).getDelivery_num());
		 */
		// 주문자 정보 추출
		String user_name; 
		String user_phone; 
		String user_email; 
		String user_address;
		String user_address2;
		String user_address3;
//		System.out.println("일반배송 사이즈"+listNormal.size());
//		System.out.println("샛별배송 사이즈"+listStar.size());

		if(listNormal.size()!=0) {
			 user_name=listNormal.get(0).getUser_name();
			 user_phone=listNormal.get(0).getUser_phone();
			 user_email=listNormal.get(0).getUser_email();
			 user_address=listNormal.get(0).getUser_address();
			 user_address2=listNormal.get(0).getUser_address2();
			 user_address3=listNormal.get(0).getUser_address3();
		}
		else if(listStar.size()!=0){
			 user_name=listStar.get(0).getUser_name();
			 user_phone=listStar.get(0).getUser_phone();
			 user_email=listStar.get(0).getUser_email();
			 user_address=listStar.get(0).getUser_address();
			 user_address2=listStar.get(0).getUser_address2();
			 user_address3=listStar.get(0).getUser_address3();
		}
		else {
			user_name=null;
			user_phone=null;
			user_email=null;
			user_address=null;
			user_address2=null;
			user_address3=null;
		}

		
		

		// 장바구니 전체 금액 호출
		int cartTotal = cartTotal(vo.getUser_num());
		
		// 적립금 : 장바구니  합계 금액의 5% 적립
		double pointRatio = 0.05; 
		int point = (int) (cartTotal*pointRatio);
		
		// 장바구니 전체 금액에 따라 배송비 구분
		// 배송료 5만원 이상 무료, 미만 2500원
		int fee = cartTotal > 50000 ? 0 : 2500;

		// 장바구니 정보를 map에 저장
		map.put("listNormal", listNormal); 
		map.put("listStar", listStar); 
		// 장바구니 상품 유무
		map.put("countNormal", listNormal.size()); 
		map.put("countStar", listStar.size()); 
		
		map.put("cartTotal", cartTotal); // 장바구니 전체 금액
		map.put("fee", fee); // 배송비
		map.put("point", point);   //적립금
		map.put("total_account", cartTotal + fee); // 장바구니 금액 + 배송비
		
		map.put("user_name",user_name);
		map.put("user_phone",user_phone);
		map.put("user_email",user_email);
		map.put("user_address",user_address);
		map.put("user_address2",user_address2);
		map.put("user_address3",user_address3);
		
		return map;
	}

//	public List<ProductVO> cartListNormal(ProductVO vo){
//		return cartDAO.cartListNormal(vo);
//	}
//	public List<ProductVO> cartListStar(ProductVO vo){
//		return cartDAO.cartListStar(vo);
//	}
	
	//장바구니 삭제 버튼으로 하나씩 삭제  
	public void cartDelete(int cart_num) {
		cartDAO.cartDelete(cart_num);
	}
	
	//장바구니 전체 삭제
	public void cartAllDelete(int user_num) {
		cartDAO.cartAllDelete(user_num);
	};
	
	
	//장바구니 수정 
	public void cartModify(ProductVO vo) {
		cartDAO.cartModify(vo);
	}
	
	//장바구니 금액 합계
	public int cartTotal(int user_num) {
		return cartDAO.cartTotal(user_num);
	}
	
	//장바구니 동일한 상품 레코드 확인
	public int cartCount(int product_num, int user_num) {
		return cartDAO.cartCount(product_num, user_num);
	}
	
	//장바구니 상품 수량 변경 
	public void cartUpdate(ProductVO vo) {
		cartDAO.cartUpdate(vo);
	}


}
