package com.littlePick.dao;

import java.util.List;

import com.littlePick.domain.ProductVO;

public interface OrderDAO {
	
	//주문 정보 추가
	public void insertOrderInfo(ProductVO vo);
	
	//주문 상세 정보 추가
	public void insertOrderList(ProductVO vo);
	
	//주문 목록 조회
	public List<ProductVO> orderList(ProductVO vo);
	
	//주문 상세 
	public List<ProductVO> orderDetail(ProductVO vo);
	
	//포인트 적립
	public void updatePoint(ProductVO vo);
	
	//재고 수량 업데이트 
	public void updateStock(ProductVO vo);
	


}
