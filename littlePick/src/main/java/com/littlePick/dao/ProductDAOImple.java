package com.littlePick.dao;

import java.util.HashMap;
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
		return mybatis.selectList("productMapper.mainList",vo);
	}
	
	
	//어떤 경고를 제외시킬지 옵션 @SuppressWarnings
	//unchecked : 검증되지 않은 연산자 관련 경고 억제 ??
	@SuppressWarnings("unchecked") 
	public List<Map<String, Object>> productList(PagingCriteria cri) {
		//System.out.println("===> Mybatis productList() 호출");
		//System.out.println("카테고리 번호 : "+cri.getCategory_num());
		return mybatis.selectList("productMapper.productList", cri);
	}
	
	//상품 상세 정보
	public ProductVO product(ProductVO vo) {
		//System.out.println("===> Mybatis product() 호출");
		return mybatis.selectOne("productMapper.product",vo);
	}
	
	//상품 필터 검색 리스트 
//	public List<ProductVO> filterList(ProductVO vo) {
//		System.out.println("===> Mybatis filterList() 호출");
//		System.out.println("DAO" + vo.isSmallpack());
//		return mybatis.selectList("productDAO.filterList", vo);
//	}
	
	//글 갯수
	public int countProductList() {
		return mybatis.selectOne("productMapper.countProductList");
	}


	// 0729(영주)
	public void productCount(ProductVO vo) {
		mybatis.update("productMapper.productCount",vo); //조회수증가
		
	}


	public List<ProductVO> category_new(ProductVO vo) {
		return mybatis.selectList("productMapper.category_new",vo);
	}
	
	public List<ProductVO> category_best() {
		return mybatis.selectList("productMapper.category_best");
	}
	
	public List<ProductVO> now_best(ProductVO vo) {
		return mybatis.selectList("productMapper.now_best",vo);
	}


	public List<ProductVO> reviewList(ProductVO vo) {
		return mybatis.selectList("productMapper.reviewList",vo);
	}


	public int reviewCount(ProductVO vo) {
		return mybatis.selectOne("productMapper.reviewCount",vo);
	}
	
	public ProductVO avgstar(ProductVO vo) {
		return mybatis.selectOne("productMapper.avgstar",vo);
	}

	
	public int starCount(int product_num, int i) {
		HashMap map = new HashMap();
		map.put("product_num",product_num);
		map.put("i",i); //최신순, 조회순
		return mybatis.selectOne("productMapper.starCount",map);
	}


	public List<ProductVO> filter(ProductVO vo) {
		return mybatis.selectList("productMapper.filter",vo);
	}


	public List<ProductVO> productSearch(ProductVO vo) {
		return mybatis.selectList("productMapper.productSearch",vo);
	}
	
	

}
