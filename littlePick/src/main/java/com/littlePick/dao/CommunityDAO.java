package com.littlePick.dao;

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
	public int commentCount(int content_num);
	
	public CommunityVO selectComment(int content_num);//댓글 select
}
