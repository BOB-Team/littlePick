package com.littlePick.dao;

import java.util.List;

import com.littlePick.domain.ProductVO;

public interface CartDAO {
	
	//장바구니 추가
	public void cartInsert(ProductVO vo);
	
	//장바구니 목록
//	public List<ProductVO> cartList(ProductVO vo);
	public List<ProductVO> cartListNormal(ProductVO vo);
	public List<ProductVO> cartListStar(ProductVO vo);
	
	//장바구니 삭제 버튼으로 하나씩 삭제  
	public void cartDelete(int cart_num);
	
	//장바구니 전체 삭제
	public void cartAllDelete(int user_num);
	
	//장바구니 수정 
	public void cartModify(ProductVO vo);
	
	//장바구니 금액 합계
	public int cartTotal(int user_num);
	
	//장바구니 동일한 상품 레코드 확인
	public int cartCount(int product_num, int user_num);
	
	//장바구니 상품 수량 변경
	public void cartUpdate(ProductVO vo);
	
	

	
	
	

}
