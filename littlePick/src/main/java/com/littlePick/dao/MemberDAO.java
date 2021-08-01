package com.littlePick.dao;

import com.littlePick.domain.CommunityVO;

public interface MemberDAO {
	/**
	 * id 중복체트 기능 구현
	 */	
	//CommunityVO  idCheck( CommunityVO vo );
	
	/**
	 * 회원가입기능 구현
	 */
	//int memberInsert(MemberVO vo);
	
	/**
	 * 로그인 확인 기능 구현
	 */
	//MemberVO memberLogin(MemberVO vo);
	public void userInsert(CommunityVO vo); //회원가입
	public CommunityVO adminidCheck_Login(CommunityVO vo);//관리자 로그인
	public CommunityVO selectUser(int usernum);//사용자 정보 가져오기
	public CommunityVO emailCheck_Login(CommunityVO vo);//이메일체크
	public CommunityVO nicknameCheck_Login(CommunityVO vo);//
}
