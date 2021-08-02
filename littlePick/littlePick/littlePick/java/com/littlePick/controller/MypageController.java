package com.littlePick.controller;

import java.util.List;

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

	@RequestMapping("mypage_order.do") //user 1번이라고 생각하고 코딩할게요
	public void mypage_order() {
		System.out.println("마이페이지 호출 ");
	}
	
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
	
	
	@RequestMapping("mypage_board.do") //user 1번이라고 생각하고 코딩할게요
	public void mypage_board(Model m) {
		CommunityVO user = mypageService.selectUser(1); //사람 정보 가져오기
		m.addAttribute("user", user);
		List<CommunityVO> boardList =  mypageService.selectBoard(1); 
		m.addAttribute("boardList", boardList);
		List<CommunityVO> commentList =  mypageService.selectComment(1); 
		m.addAttribute("commentList", commentList);
	}
	
	/*
	 * //추후구현예정
	 * 
	 * @RequestMapping("mypage_review.do") public void mypage_review(Model m) {
	 * //리뷰, 상품 조인해서 selectReview CommunityVO user = mypageService.selectUser(1);
	 * //사람 정보 가져오기 m.addAttribute("user", user); //List<CommunityVO> reviewList =
	 * mypageService.selectBoard(1); //selectReview 만들어서 변경
	 * //m.addAttribute("reviewList", reviewList); }
	 * 
	 * //추후구현예정
	 * 
	 * @RequestMapping("mypage_order.do") public void mypage_order(Model m) {
	 * //주문,주문내역 조회해서 가져오기. 주문번호 클릭하면 결제완료 내역으로. CommunityVO user =
	 * mypageService.selectUser(1); //사람 정보 가져오기 m.addAttribute("user", user);
	 * 
	 * }
	 */
		@RequestMapping("mypage_qna.do")
		public void mypage_qna(Model m) { 
			CommunityVO user = mypageService.selectUser(1);
			m.addAttribute("user", user);
			
			List<CommunityVO> qboardList = mypageService.selectqna(1);
			m.addAttribute("qboardList", qboardList);
			//사용자 번호랑 글 번호로 댓글 수 count해 올 수 있음 ->나중에할래
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
		public void mypage_setting(Model m){
			CommunityVO user = mypageService.selectUser(1); //사람 정보 가져오기
			m.addAttribute("user", user);
		}
		
		@RequestMapping("mypage_setting_save.do")
		public String mypage_setting_save(CommunityVO vo){
			mypageService.settingUpdate(vo); //사람 정보 가져오기
			return "redirect:mypage_setting.do";
		}

}
