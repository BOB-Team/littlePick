package com.littlePick.dao;

import java.util.List;
import java.util.Map;

import com.littlePick.domain.PagingCriteria;
import com.littlePick.domain.ProductVO;

public interface ProductDAO {
	
	//상품 목록 조회
	public List<ProductVO> mainList(ProductVO vo);
	public List<Map<String, Object>> productList(PagingCriteria cri);
	
	//상품 상세 정보
	ProductVO product(ProductVO vo);
	
	//상품 필터 검색 리스트
//	public List<ProductVO> filterList(ProductVO vo);
	
	//글 갯수
	public int countProductList();
	
	
	
	//0729(영주)
	public void productCount(ProductVO vo);
	public List<ProductVO> category_new(ProductVO vo);
	public List<ProductVO> category_best();
	public List<ProductVO> now_best(ProductVO vo);
	public List<ProductVO> reviewList(ProductVO vo);
	public int reviewCount(ProductVO vo);//리뷰수
	public ProductVO avgstar(ProductVO vo);
	public int starCount(int product_num, int i);
	public List<ProductVO> productSearch(ProductVO vo);
}
