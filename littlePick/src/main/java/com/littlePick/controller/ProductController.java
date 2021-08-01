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
	
	//메인 페이지 
	// a 태그의 파라미터 값 받기 : method=RequestMethod.GET 
	@RequestMapping(value="main.do", method=RequestMethod.GET)
	public void productList(ProductVO vo, Model m) {
		m.addAttribute("mainList", productService.mainList(vo));
	}
	
		
	//상품 목록 
	@RequestMapping("productList.do")
	public ModelAndView productList(PagingCriteria cri) {
		System.out.println("Controller productList.do 요청확인");

		ModelAndView mv = new ModelAndView("productList");
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(productService.countProductList()); 
		  
		List<Map<String, Object>> list = productService.productList(cri);
		mv.addObject("list", list);
		mv.addObject("pageMaker", pageMaker);
		/* System.out.println("controller카테고리 번호"+vo.getCategory_num()); */ 
		  
		return mv;

	  }
	  
	//상품 상세 정보
	@RequestMapping(value="product.do", method=RequestMethod.GET)
	public void product(ProductVO vo, Model m) {
		System.out.println("product.do 요청확인");
		m.addAttribute("product",productService.product(vo));
	}

}
