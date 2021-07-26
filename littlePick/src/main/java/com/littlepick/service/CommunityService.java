package com.littlepick.service;

import com.littlepick.domain.CommunityVO;

public interface CommunityService {
	public CommunityVO idCheck_Login( CommunityVO vo);
	public int userInsert(CommunityVO vo );
	
	public CommunityVO selectBoard(CommunityVO vo);
	public void insertBoard(CommunityVO vo);
	public int commentCount(int content_num);
}
