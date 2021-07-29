package com.littlePick.service;

import java.util.List;

import com.littlePick.domain.ProductVO;

public interface CartService {
	
	//장바구니 추가
	public void cartInsert(ProductVO vo);
	
	//장바구니 목록
	public List<ProductVO> cartList(String user_email);
	
	//장바구니 삭제 버튼으로 하나씩 삭제  
	public void cartDelete(int cart_num);
	

	
	//장바구니 수정 
	public void cartModify(ProductVO vo);
	
	//장바구니 금액 합계
	public int cartTotal(String user_email);
	
	//장바구니 동일한 상품 레코드 확인
	public int cartCount(int product_num, String user_email);
	
	//장바구니 상품 수량 변경 
	public void cartUpdate(ProductVO vo);
	
	

}
