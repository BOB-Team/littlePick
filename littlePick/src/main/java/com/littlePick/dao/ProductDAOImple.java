package com.littlePick.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.littlePick.domain.PagingCriteria;
import com.littlePick.domain.ProductVO;

@Repository
public class ProductDAOImple implements ProductDAO {
	

	@Autowired
	private SqlSessionTemplate mybatis;
	
	//상품 목록 조회
	public List<ProductVO> mainList(ProductVO vo) {
		return mybatis.selectList("productDAO.mainList",vo);
	}
	
	
	//어떤 경고를 제외시킬지 옵션 @SuppressWarnings
	//unchecked : 검증되지 않은 연산자 관련 경고 억제 ??
	@SuppressWarnings("unchecked") 
	public List<Map<String, Object>> productList(PagingCriteria cri) {
		System.out.println("===> Mybatis productList() 호출");
		System.out.println(cri.getCategory_num());
		return mybatis.selectList("productDAO.productList", cri);
	}
	
	//상품 상세 정보
	public ProductVO product(ProductVO vo) {
		System.out.println("===> Mybatis product() 호출");
		return mybatis.selectOne("productDAO.product",vo);
	}
	
	//상품 필터 검색 리스트 
//	public List<ProductVO> filterList(ProductVO vo) {
//		System.out.println("===> Mybatis filterList() 호출");
//		System.out.println("DAO" + vo.isSmallpack());
//		return mybatis.selectList("productDAO.filterList", vo);
//	}
	
	//글 갯수
	public int countProductList() {
		System.out.println("===> Mybatis countProductList() 호출");
		return mybatis.selectOne("productDAO.countProductList");
	}
	
	

}
