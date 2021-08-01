package com.littlePick.dao;

import java.util.List;

import com.littlePick.domain.AdminVO;

public interface AdminMemberDAO {
	
	//회원 목록
	public List<AdminVO> memberList();

	public  void insertAdminMember(AdminVO vo);

	public  AdminVO viewAdminMember(AdminVO vo);

	public  void deleteAdminMember(AdminVO vo);

	public  void updateAdminMember(AdminVO vo);

	public  boolean checkPw(String user_email, String user_password);


		
	




		


	/*
	//회원 입력
	public List<AdminMemberVO> insertAdminMember(AdminMemberVO vo);
	
	//회원 정보 상세보기
	public List<AdminMemberVO> viewAdminMember();
	
	//회원 삭제
	public List<AdminMemberVO> deleteAdminMember(String userEmail);
	
	//회원 정보 수정
	public List<AdminMemberVO> updateAdminMember(AdminMemberVO vo);

	List<AdminMemberVO> adminMemberList();

	*/

}
