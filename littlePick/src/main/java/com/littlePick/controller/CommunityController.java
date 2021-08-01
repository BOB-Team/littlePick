package com.littlePick.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.littlePick.domain.CommunityVO;
import com.littlePick.service.CommunityServiceImpl;

@Controller

public class CommunityController {

	@Autowired
	CommunityServiceImpl comService;

	@RequestMapping("community.do")
	public void community(Model m, CommunityVO vo) { // 커뮤니티 호출
		List<CommunityVO> board1 = comService.select3Community("요리");
		m.addAttribute("boardList1", board1);
		List<CommunityVO> board2 = comService.select3Community("생활");
		m.addAttribute("boardList2", board2);
		List<CommunityVO> board3 = comService.select3Community("건강");
		m.addAttribute("boardList3", board3);
		List<CommunityVO> board4 = comService.select3Community("번개팅");
		m.addAttribute("boardList4", board4);
	}
	
	@RequestMapping("community_board1.do")
	public void community1(Model m, CommunityVO vo, String selectOrder) { // 커뮤니티 요리 호출
		List<CommunityVO> board = comService.selectCommunity("요리",selectOrder);
		m.addAttribute("boardList", board);
	}
	
	@RequestMapping("community_board2.do")
	public void community2(Model m, CommunityVO vo, String selectOrder) { // 커뮤니티 생활 호출
		List<CommunityVO> board = comService.selectCommunity("생활",selectOrder);
		m.addAttribute("boardList", board);
	}
	
	@RequestMapping("community_board3.do")
	public void community3(Model m, CommunityVO vo, String selectOrder) { // 커뮤니티 건강 호출
		List<CommunityVO> board = comService.selectCommunity("건강",selectOrder);
		m.addAttribute("boardList", board);
	}
	
	@RequestMapping("community_board4.do")
	public void community4(Model m, CommunityVO vo, String selectOrder) { //커뮤니티 번개팅 호출
		List<CommunityVO> board = comService.selectCommunity("번개팅",selectOrder);
		m.addAttribute("boardList", board);
	}
	
	@RequestMapping("community_board_input.do")
	public void communityInput(CommunityVO vo) { //커뮤니티 글 입력 
	}

	
	@RequestMapping("community_board_save.do")
	public String communitySave(CommunityVO vo) { //커뮤니티 글 저장
		comService.insertBoard(vo);
		return "redirect:community.do";
	}
	
	@RequestMapping("community_board_view.do")
	public void communityView (Model m, CommunityVO vo) { //커뮤니티 글 보기
		CommunityVO board = comService.selectBoard(vo); //게시글 가져오기
		m.addAttribute("board", board);
		
		int content_num = board.getContent_num();
		m.addAttribute("count", comService.commentCount(content_num)); //댓글 수
		
		List<CommunityVO> comment = comService.selectComment(content_num); // 댓글
		m.addAttribute("commentList", comment);
		
		comService.boardCountUp(content_num);//조회수 1 증가
		
	}
	

	@RequestMapping("community_board_view_my.do")
	public void communityViewMy() {
		System.out.println("커뮤니티 내 글 보기 호출 ");
	}
	
	
	@RequestMapping("community_comment_save.do")
	public String insertComment(CommunityVO vo) { //댓글저장
		comService.insertComment(vo);
		return "redirect:community_board_view.do?content_num="+vo.getContent_num();
	}
	
	@RequestMapping("community_search.do")
	public void communitySearch(Model m,String searchCondition, String searchKeyword){
	m.addAttribute("boardList", comService.communitySearch(searchCondition,searchKeyword));
	}
	
	 
}
