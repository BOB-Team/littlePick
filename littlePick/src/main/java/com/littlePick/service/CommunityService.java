package com.littlePick.service;

import java.util.List;

import com.littlePick.domain.CommunityVO;

public interface CommunityService {
	public CommunityVO idCheck_Login( CommunityVO vo);
	public int userInsert(CommunityVO vo );
	
	public CommunityVO selectBoard(CommunityVO vo);
	public void insertBoard(CommunityVO vo,int user_num);
	public int commentCount(int content_num); //해당 게시글 댓글 count
	public List<CommunityVO> selectComment(int content_num); //댓글 list
	public List<CommunityVO> selectCommunity(String board_name,String selectOrder); //커뮤니티 게시물 list
	public List<CommunityVO> select3Community(String board_name); //커뮤니티 게시물 list
	public void insertComment(CommunityVO vo,int user_num); //댓글 insert
	public List<CommunityVO> communitySearch(String searchCondition, String searchKeyword);//커뮤니티 검색
	public void boardCountUp(int content_num);//조회수 1 증가
	public void boarddelete(int content_num);
	public void boardmodify(CommunityVO vo);
	public void insertReview(CommunityVO vo);
}
