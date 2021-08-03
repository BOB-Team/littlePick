package com.littlePick.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.littlePick.domain.PageMaker;
import com.littlePick.domain.PagingCriteria;
import com.littlePick.domain.ProductVO;
import com.littlePick.service.ProductServiceImpl;

@Controller
public class ProductController {

	
	@Autowired
	ProductServiceImpl productService;
	
		
	/*
	 * //상품 목록
	 * 
	 * @RequestMapping("productList.do") public ModelAndView
	 * productList(PagingCriteria cri) {
	 * 
	 * ModelAndView mv = new ModelAndView("productList"); PageMaker pageMaker = new
	 * PageMaker(); pageMaker.setCri(cri);
	 * pageMaker.setTotalCount(productService.countProductList());
	 * 
	 * List<Map<String, Object>> list = productService.productList(cri);
	 * mv.addObject("list", list); //상품리스트 mv.addObject("pageMaker", pageMaker);
	 * mv.addObject("num",cri.getCategory_num());
	 * //System.out.println("controller카테고리 번호"+cri.getCategory_num()); return mv;
	 * 
	 * }
	 */
	  
	  
	  //상품 필터 검색 리스트
/*	  @RequestMapping(value="filterList.do", produces="application/text;charset=UTF-8")
	  @ResponseBody
	  public Model filterList(ProductVO vo, Model m) {
		  m.addAttribute("productList", productService.filterList(vo));
		  System.out.println("controller" + vo.getProduct_name());
		  return result;  
	  } 
*/	 
	
	
	
	
	//영주 (0729)
	
	//메인 페이지 (언니 기존 코드에 추가)
		// a 태그의 파라미터 값 받기 : method=RequestMethod.GET 
		@RequestMapping(value="main.do", method=RequestMethod.GET)
		public void productList(ProductVO vo, Model m) {
			//System.out.println("소포장 제품 "+vo.isSmallpack());
			m.addAttribute("mainList", productService.mainList(vo));
			m.addAttribute("mainList2", productService.category_new(vo));
			m.addAttribute("mainList3", productService.category_best());
			m.addAttribute("mainList4", productService.now_best(vo));
		}
	
	//상품 상세 정보 (언니 기존 코드에 추가)
		
		
		@RequestMapping(value="product.do", method=RequestMethod.GET)
		public void product(ProductVO vo, Model m) {
			m.addAttribute("product",productService.product(vo));
			
			//클릭하면 조회수 증가
			productService.productCount(vo);
			
			//리뷰
			List<ProductVO> reviewList = productService.reviewList(vo);
			m.addAttribute("reviewList", reviewList);
			
			//리뷰 수
			m.addAttribute("count", productService.reviewCount(vo));
			
			//평점
			double avg;
			ProductVO avgstar = productService.avgstar(vo);
			if(avgstar == null) {
				avg = 0;
			}
			else {
				avg = avgstar.getAvgstar();
			}
				
			m.addAttribute("avgstar", avg);

			//리뷰 별 개수 count starCount
			m.addAttribute("star5", productService.starCount(vo.getProduct_num(),5));
			m.addAttribute("star4", productService.starCount(vo.getProduct_num(),4));
			m.addAttribute("star3", productService.starCount(vo.getProduct_num(),3));
			m.addAttribute("star2", productService.starCount(vo.getProduct_num(),2));
			m.addAttribute("star1", productService.starCount(vo.getProduct_num(),1));

		}
		
		@RequestMapping("category_best.do")
		public void category_best(Model m) {
			m.addAttribute("mainList3", productService.category_best());
		}
		
		@RequestMapping("category_new.do")
		public void category_new(Model m, ProductVO vo) {
			m.addAttribute("mainList2", productService.category_new(vo));
		}
		
		@RequestMapping("category_now.do")
		public void category_now(Model m, ProductVO vo) {
			m.addAttribute("mainList3", productService.now_best(vo));
		}
		
		//핆터링
		@RequestMapping("productFilter.do")
		public void filter(Model m, ProductVO vo){
			List<ProductVO> list = productService.filter(vo);
			m.addAttribute("list",list);
			m.addAttribute("num",vo.getCategory_num());
		}
		
	
	  @RequestMapping("productSearch.do")
	  public void productSearch(Model m,ProductVO vo){
		  String name = vo.getProduct_name();
		  m.addAttribute("name",name);
		  List<ProductVO> list = productService.productSearch(vo);
		  m.addAttribute("list",list);
	  }
	 
}
