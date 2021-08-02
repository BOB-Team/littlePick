package com.littlePick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.littlePick.dao.AdminMemberDAOImpl;
import com.littlePick.domain.AdminVO;



// 현재 클래스를 스프링에서 관리하는 service bean으로 등록
@Service("adminService")
public class AdminMemberServiceImpl implements AdminMemberService{

@Autowired
 private AdminMemberDAOImpl adminDAO;
	
	// 전체 회원 목록 조회
	@Override
	public List<AdminVO> memberList() {
		return adminDAO.memberList();
	}

	// 회원 등록
	@Override
	public void insertAdminMember(AdminVO vo) {
		adminDAO.insertAdminMember(vo);
	}

	// 회원 정보 상세 조회
	@Override
	public AdminVO viewAdminMember(AdminVO vo) {
		return adminDAO.viewAdminMember(vo);
	}

	// 회원 정보 수정 처리
	@Override
	public void deleteAdminMember(AdminVO vo) {
		adminDAO.deleteAdminMember(vo);
	}

	// 회원 정보 삭제 처리
	@Override
	public void updateAdminMember(AdminVO vo) {
		adminDAO.updateAdminMember(vo);
	}
	
	// 회원 정보 수정 및 삭제를 위한 비밀번호 체크
	@Override
	public boolean checkPw(String user_email, String user_password) {
		return adminDAO.checkPw(user_email, user_password);
	}



	
	//--------------------------------------------------------------------------------
	// 전체 상품 목록 조회
		@Override
		public List<AdminVO> productList() {
			return adminDAO.productList();
		}

		// 상품 등록
		@Override
		public void insertAdminMember1(AdminVO vo) {
			adminDAO.insertAdminMember1(vo);
		}

		// 상품 정보 상세 조회
		@Override
		public AdminVO viewAdminMember1(AdminVO vo) {
			return adminDAO.viewAdminMember1(vo);
		}

		// 상품 정보 삭제 처리
		@Override
		public void deleteAdminMember1(AdminVO vo) {
			adminDAO.deleteAdminMember1(vo);
		}

		// 상품 정보 수정 처리
		@Override
		public void updateAdminMember1(AdminVO vo) {
			adminDAO.updateAdminMember1(vo);

		}

		
		public AdminVO product(AdminVO vo) {
			return adminDAO.product(vo);
		}
		

		@Override
		public List<AdminVO> memberList(AdminVO vo) {
			// TODO Auto-generated method stub
			return null;
		}

	
	


	



	


	
		

}
