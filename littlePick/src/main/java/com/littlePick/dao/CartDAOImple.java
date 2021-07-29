package com.littlePick.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.littlePick.domain.ProductVO;

@Repository
public class CartDAOImple implements CartDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//장바구니 추가
	public void cartInsert(ProductVO vo) {
		System.out.println("===>  CartMapper cartInsert() 호출");
		mybatis.insert("cartMapper.cartInsert", vo);
	}
	
	//장바구니 목록
	public List<ProductVO> cartList(String user_email){
		System.out.println("===>  CartMapper cartList() 호출");
		return mybatis.selectList("cartMapper.cartList", user_email);
	}
	
	
	//장바구니 삭제 버튼으로 하나씩 삭제  
	public void cartDelete(int cart_num) {
		System.out.println("===>  CartMapper cartDelete() 호출");
		mybatis.delete("cartMapper.cartDelete", cart_num);		
	}
	

	//장바구니 수정 
	public void cartModify(ProductVO vo) {
		System.out.println("===>  CartMapper cartModify() 호출");
		mybatis.delete("cartMapper.cartModify", vo);	
	}
	
	//장바구니 금액 합계
	public int cartTotal(String user_email) {
		System.out.println("===>  CartMapper cartTotal() 호출");	
		return mybatis.selectOne("cartMapper.cartTotal", user_email);	
	}
	
	//장바구니 동일한 상품 레코드 확인
	public int cartCount(int product_num, String user_email) {
		System.out.println("===>  CartMapper cartCount() 호출");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("product_num", product_num);
		map.put("user_email",user_email);
				
		return mybatis.selectOne("cartMapper.cartCount", map);
	}
	
	//장바구니 상품 수량 변경
	public void cartUpdate(ProductVO vo) {
		System.out.println("===>  CartMapper cartUpdate() 호출");
		mybatis.update("cartMapper.cartUpdate", vo);	
	}
	
	

	
	
	

}
