package com.littlePick.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.littlePick.domain.CommunityVO;

import com.littlePick.service.MypageServiceImpl;

@Controller
public class MypageController {
	 
	@Autowired
	MypageServiceImpl mypageService;
	
	@RequestMapping("mypage_userpage.do") //다른사람이 내 마이페이지 볼 때 (게시물, 댓글)
	public void mypage_userpage(Model m, CommunityVO vo) {
		int user_num = vo.getUser_num();
		CommunityVO user = mypageService.selectUser(user_num); //사람 정보 가져오기
		m.addAttribute("user", user);
		List<CommunityVO> boardList =  mypageService.selectBoard(user_num); 
		m.addAttribute("boardList", boardList);
		List<CommunityVO> commentList =  mypageService.selectComment(user_num); 
		m.addAttribute("commentList", commentList);
	}
	
	
	@RequestMapping("mypage_board.do")
	public void mypage_board(Model m,HttpSession session) {
		int user_num = (int)session.getAttribute("user_num");
		CommunityVO user = mypageService.selectUser(user_num); //사람 정보 가져오기
		m.addAttribute("user", user);
		List<CommunityVO> boardList =  mypageService.selectBoard(user_num); 
		m.addAttribute("boardList", boardList);
		List<CommunityVO> commentList =  mypageService.selectComment(user_num); 
		m.addAttribute("commentList", commentList);
	}
	
	

	 
	 @RequestMapping("mypage_review.do")
	 public void mypage_review(Model m,HttpSession session) {//리뷰, 상품 조인해서
		int user_num = (int)session.getAttribute("user_num");
	 	CommunityVO user = mypageService.selectUser(user_num);//사람 정보 가져오기
	 	m.addAttribute("user", user);
	 	
	 	List<CommunityVO> reviewList = mypageService.selectReview(user_num);
	 	m.addAttribute("reviewList", reviewList);
	 	
	 }

	 
	  @RequestMapping("mypage_order.do")
	  public void mypage_order(Model m,HttpSession session) { 
		  int user_num = (int)session.getAttribute("user_num");
		  CommunityVO user = mypageService.selectUser(user_num); //사람 정보 가져오기 
		  m.addAttribute("user", user);
		  
		//주문,주문내역 조회해서 가져오기. 주문번호 클릭하면 주문내역으로.
		  List<CommunityVO> orderList = mypageService.t_selectOrder(user_num);
		  m.addAttribute("orderList", orderList);
	  }
	  
	  @RequestMapping("mypage_orderdetail.do")
	  public void mypage_orderdetail(Model m,HttpSession session, int order_num) { 
		  int user_num = (int)session.getAttribute("user_num");
		  CommunityVO user = mypageService.selectUser(user_num); //사람 정보 가져오기 
		  m.addAttribute("user", user);
		  
		  CommunityVO ord = mypageService.selectOrder(order_num);
		  m.addAttribute("ord", ord);
		  
		  List<CommunityVO> orderList = mypageService.selectOrderList(order_num);
		  m.addAttribute("orderList", orderList);
	  }
	  @RequestMapping("mypage_review_input.do")
		public void mypage_review_input(Model m,CommunityVO vo) {
			m.addAttribute("product_num",vo.getProduct_num());
			//m.addAttribute("product_name",vo.getProduct_name());
		}
		
		@RequestMapping("mypage_review_save.do")
		public String mypage_review_save(Model m,CommunityVO vo,HttpSession session) {
			System.out.println("1");
			int user_num = (int)session.getAttribute("user_num");
			vo.setUser_num(user_num);
			System.out.println("2");
			mypageService.insertReview(vo);
			System.out.println("3");
			return "redirect:product.do?product_num="+vo.getProduct_num();
		}
	 

	 
	 
	  @RequestMapping("mypage_qna.do")
	  public void mypage_qna(Model m, HttpSession session) {
		  int user_num = (int)session.getAttribute("user_num");
		  CommunityVO user = mypageService.selectUser(user_num);
		  m.addAttribute("user", user);
			
		  List<CommunityVO> qboardList = mypageService.selectqna(user_num);
		  m.addAttribute("qboardList", qboardList);
		  
		}
		
		@RequestMapping("mypage_qna_input.do")
		public void mypage_qna_input(Model m, int user_num) {
			m.addAttribute("user_num", user_num);
		}
		
		@RequestMapping("mypage_qna_save.do")
		public String mypage_qna_save(Model m,CommunityVO vo) {
			mypageService.insertQboard(vo);
			return "redirect:mypage_qna.do";
		}
		
		
		@RequestMapping("mypage_qna_view.do")
		public void mypage_qna_view(Model m,int q_num) {
			CommunityVO qboard = mypageService.selectQboard(q_num);
			m.addAttribute("qboard", qboard);
			mypageService.updateCountQboard(q_num); //카운트 증가
			
			int count = mypageService.answerCount(q_num);//답변 수
			m.addAttribute("count", count);
			
			List<CommunityVO> answerList = mypageService.selectAnswer(q_num); //답글
			m.addAttribute("answerList", answerList);
		}
		
		@RequestMapping("mypage_setting.do")
		public void mypage_setting(Model m, HttpSession session){
			int user_num = (int)session.getAttribute("user_num");
			CommunityVO user = mypageService.selectUser(user_num); //사람 정보 가져오기
			m.addAttribute("user", user);
		}
		
		@RequestMapping("mypage_setting_check.do")
		public String mypage_setting_check(Model m, CommunityVO vo, HttpSession session){
			int user_num = (int)session.getAttribute("user_num");
			vo.setUser_num(user_num);

			CommunityVO result = mypageService.passcheck(vo);// DB에 해당 정보가 있는지 확인
			
			if(result == null) { //없음
				return "redirect:mypage_setting.do";
			}else { // 로그인 성공
				return "redirect:mypage_setting_input.do"; //메인페이지로 이동(헤더 새로운 거)
			}
		}
		
		@RequestMapping("mypage_setting_input.do")
		public void mypage_setting_input(Model m, HttpSession session){
			int user_num = (int)session.getAttribute("user_num");
			CommunityVO user = mypageService.selectUser(user_num); //사람 정보 가져오기
			m.addAttribute("user", user);
		}
		
		
		
		@RequestMapping("mypage_setting_save.do")
		public String mypage_setting_save(CommunityVO vo){
			mypageService.settingUpdate(vo);
			return "redirect:mypage_setting_input.do";
		}
		
}
