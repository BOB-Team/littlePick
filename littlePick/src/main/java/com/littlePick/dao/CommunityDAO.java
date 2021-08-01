package com.littlePick.dao;

import java.util.List;

import com.littlePick.domain.CommunityVO;
public interface CommunityDAO {
	/**
	 * id 중복체트 기능 구현
	 */	
	CommunityVO  idCheck( CommunityVO vo );
	
	/**
	 * 회원가입기능 구현
	 */
	int memberInsert(CommunityVO vo);
	
	/**
	 * 로그인 확인 기능 구현
	 */
	CommunityVO memberLogin(CommunityVO vo);
	
	
	//게시글 받아오기
	CommunityVO selectBoard(CommunityVO vo);
	
	void insertBoard(CommunityVO vo);
	
	//댓글 count
	public int commentCount(String board_name);
	
	public List<CommunityVO> selectComment(int content_num);//댓글 select
	
	public List<CommunityVO> selectCommunity(String board_name, String selectOrder);//카테고리 list
	
	public List<CommunityVO> select3Community(String board_name);//카테고리 list
	
	public void insertComment(CommunityVO vo);
	
	public List<CommunityVO> communitySearch(String searchCondition, String searchKeyword);
	
	public void boardCountUp(int content_num); //조회수 1 증가
	
}
