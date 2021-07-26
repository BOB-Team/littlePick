package com.littlePick.service;

import com.littlePick.domain.CommunityVO;

public interface CommunityService {
	public CommunityVO idCheck_Login( CommunityVO vo);
	public int userInsert(CommunityVO vo );
	
	public CommunityVO selectBoard(CommunityVO vo);
	public void insertBoard(CommunityVO vo);
	public int commentCount(int content_num); //해당 게시글 댓글 count
	public CommunityVO selectComment(int content_num);
}
