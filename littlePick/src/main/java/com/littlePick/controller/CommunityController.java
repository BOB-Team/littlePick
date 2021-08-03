package com.littlePick.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

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
	public String communitySave(CommunityVO vo, HttpSession session) { //커뮤니티 글 저장 (회원만)
		String name = vo.getBoard_name();
		int user_num = (int)session.getAttribute("user_num");
		comService.insertBoard(vo,user_num);
		
		if(name.equals("요리")) {
			return "redirect:community_board1.do";
		}else if(name.equals("생활")) {
			return "redirect:community_board2.do";
		}else if(name.equals("건강")) {
			return "redirect:community_board3.do";
		}else if(name.equals("번개팅")) {
			return "redirect:community_board4.do";
		}else {
			return "redirect:community.do";
		}
	}
	
	@RequestMapping("community_board_view.do") //커뮤니티 게시글 보기
	public String communityView (Model m, CommunityVO vo,HttpSession session) {

		CommunityVO board = comService.selectBoard(vo); //게시글 가져오기
		m.addAttribute("board", board);
		
		int content_num = board.getContent_num();
		m.addAttribute("count", comService.commentCount(content_num)); //댓글 수
		
		List<CommunityVO> comment = comService.selectComment(content_num); // 댓글
		m.addAttribute("commentList", comment);
		
		comService.boardCountUp(content_num);//조회수 1 증가
		
		if(session.getAttribute("user_num") !=null) { //세션 확인
			int user_num = (int)session.getAttribute("user_num");
			int getUser_num = board.getUser_num();
			if(user_num == getUser_num) {
				return "community_board_view_my"; // 내 글 보기 페이지(수정, 삭제 버튼)
			}else {
				return "community_board_view";
			}
		}else {
			return "community_board_view";
			}
		}
	
	
		
	@RequestMapping("community_comment_save.do")
	public String insertComment(CommunityVO vo,HttpSession session) { //댓글저장
		int user_num = (int)session.getAttribute("user_num");
		comService.insertComment(vo,user_num);
		return "redirect:community_board_view.do?content_num="+vo.getContent_num();
	}
	
	@RequestMapping("community_search.do")
	public void communitySearch(Model m,String searchCondition, String searchKeyword){
	m.addAttribute("boardList", comService.communitySearch(searchCondition,searchKeyword));
	}
	
	@RequestMapping("community_board_modify.do")
	public void boardmodify(Model m,CommunityVO vo){
		CommunityVO board = comService.selectBoard(vo);
		m.addAttribute("board",board);
	}
	
	@RequestMapping("community_modify_save.do")
	public String modifysave(Model m,CommunityVO vo){
		comService.boardmodify(vo);
		return "redirect:community_board_view.do?content_num="+vo.getContent_num();
	}

	
	@RequestMapping("community_board_delete.do")
	public String boarddelete(int content_num){
		comService.boarddelete(content_num);
		return "redirect:community.do";
	}
	
}
