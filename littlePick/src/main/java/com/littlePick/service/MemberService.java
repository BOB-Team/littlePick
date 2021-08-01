package com.littlePick.service;

import com.littlePick.domain.CommunityVO;

public interface MemberService {

	//public int userInsert(MemberVO vo );
	public void userInsert(CommunityVO vo);
	public CommunityVO adminidCheck_Login(CommunityVO vo);//관리자 로그인
	public CommunityVO selectUser(int usernum); //회원 검색
	public CommunityVO emailCheck_Login(CommunityVO vo);//이메일 체크
	public CommunityVO nicknameCheck_Login(CommunityVO vo);//이메일 체크
	
}
