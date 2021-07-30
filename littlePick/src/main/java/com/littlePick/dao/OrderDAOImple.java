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
	
//	public void orderInfoDetails(ProductVO vo) {
//		System.out.println("===> orderMapper orderInfoDetails() 호출");
//		mybatis.insert("orderMapper.orderInfoDetails",vo);
//	}


}
