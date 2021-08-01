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

}
