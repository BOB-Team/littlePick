package com.littlePick.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.littlePick.dao.ProductDAOImple;
import com.littlePick.domain.PagingCriteria;
import com.littlePick.domain.ProductVO;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDAOImple productDAO;
	
	//상품 목록 조회
	public List<ProductVO> mainList(ProductVO vo) {
		return productDAO.mainList(vo);
	}
	
	public List<Map<String, Object>> productList(PagingCriteria cri) {
		//System.out.println("ProductServiceImpl 요청");
		return productDAO.productList(cri);
	};
	
	//상품 상세 정보
	public ProductVO product(ProductVO vo) {
		return productDAO.product(vo);
	}
	
	//상품 필터 검색 리스트
//	public List<ProductVO> filterList(ProductVO vo) {
//		//System.out.println("ProductServiceImpl 요청");
//		return productDAO.filterList(vo);
//	};

	//글 갯수
	public int countProductList() {
		return productDAO.countProductList();
	}
}
