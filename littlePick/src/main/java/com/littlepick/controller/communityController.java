package com.littlepick.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.littlepick.domain.CommunityVO;
import com.littlepick.service.CommunityServiceImpl;

@Controller
@RequestMapping("/commu/")
public class communityController {
	
	
	
	/*
	 * @RequestMapping("{url}.do") public String sample(@PathVariable String url) {
	 * return "/commu/"+url; }
	 */
	 
	@Autowired
	CommunityServiceImpl comService;
	
	
	  @RequestMapping("review.do")
	  public void review(Model m){
	  String result = comService.sysdate(); //모델, 모델앤뷰, 해쉬맵 가능
	  m.addAttribute("result",result);
	  System.out.println("sysdate~");
	  }
	 

	
	@RequestMapping("test.do")
	public void test() {
		System.out.println("test 호출 ");
		
	}
	
	@RequestMapping("community.do")
	public void community() {
		System.out.println("커뮤니티호출 ");
	}
	
	@RequestMapping("community_board1.do")
	public void community1() {
		System.out.println("커뮤니티 요리 호출 ");
	}
	
	@RequestMapping("community_board2.do")
	public void community2() {
		System.out.println("커뮤니티 생활 호출 ");
	}
	
	@RequestMapping("community_board3.do")
	public void community3() {
		System.out.println("커뮤니티 건강 호출 ");
	}
	
	@RequestMapping("community_board4.do")
	public void community4() {
		System.out.println("커뮤니티 번개팅 호출 ");
	}
	
	@RequestMapping("community_board_input.do")
	public void communityInput(CommunityVO vo) {
		System.out.println("커뮤니티 글 입력 호출 ");
	}

	
	@RequestMapping("community_board_save.do")
	public String communitySave(CommunityVO vo) {
		System.out.println("커뮤니티 글 저장 호출 ");
		comService.insertBoard(vo);
		return "redirect:community_board_view.do"; 
		
	}
	
	@RequestMapping("community_board_view.do")
	public void communityView (Model m, CommunityVO vo) {
		System.out.println("커뮤니티 글 보기 호출 ");
		CommunityVO board = comService.selectBoard(vo);
		//int content_num = board.getContent_num();
		m.addAttribute("board", board);
		m.addAttribute("comment", comService.commentCount(1));
		//m.addAttribute("date",toString(vo.getContent_date(),"YYYYMMDD"));
	}
	

	
	private Object toString(String content_date, String string) {
		// TODO Auto-generated method stub
		return null;
	}



	@RequestMapping("community_board_view_my.do")
	public void communityViewMy() {
		System.out.println("커뮤니티 내 글 보기 호출 ");
	}
	
}
