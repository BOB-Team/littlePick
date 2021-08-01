package com.littlePick.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.littlePick.domain.ProductVO;

@Repository
public class OrderDAOImple implements OrderDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertOrderInfo(ProductVO vo) {
		System.out.println("===> orderMapper insertOrderInfo() 호출");
		mybatis.insert("orderMapper.insertOrderInfo",vo);
	}
	
	public void insertOrderList(ProductVO vo) {
		System.out.println("===> orderMapper insertOrderList() 호출");
		mybatis.insert("orderMapper.insertOrderList",vo);
	}
	//주문 목록 조회
	public List<ProductVO> orderList(ProductVO vo){
		System.out.println("===> orderMapper orderList() 호출");
		return mybatis.selectList("orderMapper.orderList",vo);
	}
	
	//주문 상세 
	public List<ProductVO> orderDetail(ProductVO vo){
		System.out.println("===> orderMapper orderDetail() 호출");
		return mybatis.selectList("orderMapper.orderDetail",vo);
	}
	
	//포인트 적립
	public void updatePoint(ProductVO vo) {
		System.out.println("===> orderMapper updatePoint() 호출");
		mybatis.update("orderMapper.updatePoint",vo);
	}
	
	//재고 수량 업데이트 
	public void updateStock(ProductVO vo) {
		System.out.println("===> orderMapper updateStock() 호출");
		mybatis.update("orderMapper.updateStock", vo);
	}


}
