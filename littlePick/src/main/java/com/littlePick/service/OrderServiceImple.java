package com.littlePick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.littlePick.dao.OrderDAOImple;
import com.littlePick.domain.ProductVO;

@Service
public class OrderServiceImple implements OrderService{
	
	@Autowired
	OrderDAOImple orderDAO;
	
	public void insertOrderInfo(ProductVO vo) {
		System.out.println("===> orderDAO insertOrderInfo() 호출");
		orderDAO.insertOrderInfo(vo);
	}
	
	public void insertOrderList(ProductVO vo) {
		System.out.println("===> orderDAO insertOrderList() 호출");
		orderDAO.insertOrderList(vo);
	}
	
	//주문 목록 조회
	public List<ProductVO> orderList(ProductVO vo){
		System.out.println("===> orderDAO orderList() 호출");
		return orderDAO.orderList(vo);
	}
	//주문 상세 
	public List<ProductVO> orderDetail(ProductVO vo) {
		System.out.println("===> orderDAO orderDetail() 호출");
		return orderDAO.orderDetail(vo);
	}
	
	//포인트 적립
	public void updatePoint(ProductVO vo) {
		orderDAO.updatePoint(vo);
	}
	
	//재고 수량 업데이트 
	public void updateStock(ProductVO vo) {
		orderDAO.updateStock(vo);
	}


}
