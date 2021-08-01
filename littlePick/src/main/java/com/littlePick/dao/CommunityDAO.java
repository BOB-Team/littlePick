package com.littlePick.dao;

import java.util.List;

import com.littlePick.domain.CommunityVO;
public interface CommunityDAO {
	
	
	//게시글 받아오기
	CommunityVO selectBoard(CommunityVO vo);
	
	void insertBoard(CommunityVO vo,int user_num);
	
	//댓글 count
	public int commentCount(String board_name);
	
	public List<CommunityVO> selectComment(int content_num);//댓글 select
	
	public List<CommunityVO> selectCommunity(String board_name, String selectOrder);//카테고리 list
	
	public List<CommunityVO> select3Community(String board_name);//카테고리 list
	
	public void insertComment(CommunityVO vo,int user_num);
	
	public List<CommunityVO> communitySearch(String searchCondition, String searchKeyword);
	
	public void boardCountUp(int content_num); //조회수 1 증가
	
	public void boarddelete(int content_num);
	
	public void boardmodify(CommunityVO vo);
	
	
}
