package com.littlePick.dao;

import java.util.List;

import com.littlePick.domain.ProductVO;

public interface OrderDAO {
	
	//주문 정보 추가
	public void insertOrderInfo(ProductVO vo);
	
	//주문 상세 정보 추가
//	public void orderInfoDetails(ProductVO vo);
	


}
