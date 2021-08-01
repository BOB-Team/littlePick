package com.littlePick.service;

import java.util.List;

import com.littlePick.domain.AdminVO;

public interface AdminMemberService {
	
	// 회원 목록
	public List<AdminVO> memberList();

	// 회원 등록
	public void insertAdminMember(AdminVO vo);

	// 회원 정보 상세 조회
	public AdminVO viewAdminMember(AdminVO vo);

	// 회원 정보 수정 처리
	public void deleteAdminMember(AdminVO vo);

	// 회원 정보 삭제 처리
	public void updateAdminMember(AdminVO vo);

	// 회원 정보 수정 및 삭제를 위한 비밀번호 체크
	public boolean checkPw(String user_email, String user_password);

	List<AdminVO> memberList(AdminVO vo);
	
	
}
