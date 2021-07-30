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
//	public List<ProductVO> cartList(int user_num){
//		System.out.println("===>  CartMapper cartList() 호출");
//		return mybatis.selectList("cartMapper.cartList", user_num);
//	}
	
	public List<ProductVO> cartListNormal(ProductVO vo){
		System.out.println("===>  CartMapper cartListNormal() 호출");
		return mybatis.selectList("cartMapper.cartListNormal", vo);
	}
	public List<ProductVO> cartListStar(ProductVO vo){
		System.out.println("===>  CartMapper cartListStar() 호출");
		return mybatis.selectList("cartMapper.cartListStar", vo);
	}
	
	//장바구니 삭제 버튼으로 하나씩 삭제  
	public void cartDelete(int cart_num) {
		System.out.println("===>  CartMapper cartDelete() 호출");
		mybatis.delete("cartMapper.cartDelete", cart_num);		
	}
	
	//장바구니 전체 삭제
	public void cartAllDelete(int user_num) {
		System.out.println("===>  CartMapper cartAllDelete() 호출");
		mybatis.delete("cartMapper.cartAllDelete", user_num);	
	}
	

	//장바구니 수정 
	public void cartModify(ProductVO vo) {
		System.out.println("===>  CartMapper cartModify() 호출");
		mybatis.delete("cartMapper.cartModify", vo);	
	}
	
	//장바구니 금액 합계
	public int cartTotal(int user_num) {
		System.out.println("===>  CartMapper cartTotal() 호출");	
		return mybatis.selectOne("cartMapper.cartTotal", user_num);	
	}
	
	//장바구니 동일한 상품 레코드 확인
	public int cartCount(int product_num, int user_num) {
		System.out.println("===>  CartMapper cartCount() 호출");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("product_num", product_num);
		map.put("user_num",user_num);
				
		return mybatis.selectOne("cartMapper.cartCount", map);
	}
	
	//장바구니 상품 수량 변경
	public void cartUpdate(ProductVO vo) {
		System.out.println("===>  CartMapper cartUpdate() 호출");
		mybatis.update("cartMapper.cartUpdate", vo);	
	}
	
	

	
	
	

}
