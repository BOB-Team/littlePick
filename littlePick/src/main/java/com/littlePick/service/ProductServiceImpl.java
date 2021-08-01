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

	
	
	
	//0729(영주)
	public void productCount(ProductVO vo) { //조회수 증가
		productDAO.productCount(vo);
		
	}

	public List<ProductVO> category_new(ProductVO vo) {
		return productDAO.category_new(vo);
	}
	
	public List<ProductVO> category_best() {
		return productDAO.category_best();
	}
	
	public List<ProductVO> now_best(ProductVO vo) {
		return productDAO.now_best(vo);
	}

	
	public List<ProductVO> reviewList(ProductVO vo) {
		return productDAO.reviewList(vo);
	}

	public int reviewCount(ProductVO vo) {
		return productDAO.reviewCount(vo);
	}
	
	public ProductVO avgstar(ProductVO vo) {
		return productDAO.avgstar(vo);
	}

	public int starCount(int product_num, int i) {
		return productDAO.starCount(product_num,i);
	}

	public List<ProductVO> filter(ProductVO vo) {
		return productDAO.filter(vo);
	}

	public List<ProductVO> productSearch(ProductVO vo) {
		return productDAO.productSearch(vo);
	}

	
}
