package com.littlePick.service;

import com.littlePick.domain.CommunityVO;

public interface MemberService {

	//public int userInsert(MemberVO vo );
	public void userInsert(CommunityVO vo);
	public CommunityVO idCheck_Login(CommunityVO vo);
	public CommunityVO selectUser(int usernum); //회원 검색
}
