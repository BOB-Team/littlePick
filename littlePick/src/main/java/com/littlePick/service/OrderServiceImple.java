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
		System.out.println("===> orderMapper insertOrderInfo() 호출");
		orderDAO.insertOrderInfo(vo);
	}
	
//	public void orderInfoDetails(ProductVO vo) {
//		System.out.println("===> orderMapper orderInfoDetails() 호출");
//		orderDAO.orderInfoDetails(vo);
//	}


}
