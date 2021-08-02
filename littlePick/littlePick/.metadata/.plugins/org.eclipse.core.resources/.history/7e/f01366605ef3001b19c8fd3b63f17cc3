package com.littlePick.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.littlePick.domain.AdminVO;

//현재 클래스를 DAO bean 으로 등록시킴
@Repository("adminDAO")
public class AdminMemberDAOImpl implements AdminMemberDAO {
	
	@Autowired
	 private SqlSessionTemplate sqlSession;
	

	
	// 회원목록
	@Override
	public List<AdminVO> memberList(){
		return sqlSession.selectList("adminMember.memberList");
	}
	
	// 회원 등록
	@Override
	public void insertAdminMember(AdminVO vo) {
		sqlSession.insert("adminMember.insertadminMember", vo);
	}

	// 회원 정보 상세보기
	@Override
	public AdminVO viewAdminMember(AdminVO vo) {
		return sqlSession.selectOne("adminMember.viewAdminMember", vo);
	}

	// 회원 삭제
	@Override
	public void deleteAdminMember(AdminVO vo) {
		sqlSession.delete("adminMember.deleteAdminMember", vo);		
	}

	// 회원 정보 수정
	@Override
	public void updateAdminMember(AdminVO vo) {
		sqlSession.selectOne("adminMember.updateAdminMember", vo);		
	}

	// 회원 정보 수정 및 삭제를 위한 비밀번호 체크
	@Override
	public boolean checkPw(String user_email, String user_passowrd) {
		boolean result = false;
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_emai", user_email);
		map.put("user_passowrd", user_passowrd);
		int count = sqlSession.selectOne("adminMember.checkPw", map);
		if(count==1) result= true;
		return result;
	}
	
	

	
	
	
	// 상품 목록
	@Override
	public List<AdminVO> productList(){
		return sqlSession.selectList("adminMember.productList");
	}
	
	
	// 상품 등록
	@Override
	public void insertAdminMember1(AdminVO vo) {
		sqlSession.insert("adminMember.insertAdminMember1", vo);
	}

	// 상품 정보 상세보기
	@Override
	public AdminVO viewAdminMember1(AdminVO vo) {
		return sqlSession.selectOne("adminMember.viewAdminMember1", vo);
	}

	// 상품 삭제
	@Override
	public void deleteAdminMember1(AdminVO vo) {
		sqlSession.delete("adminMember.deleteAdminMember1", vo);		
	}

	// 상품 정보 수정
	@Override
	public void updateAdminMember1(AdminVO vo) {
		sqlSession.update("adminMember.updateAdminMember1", vo);		
	}

	public AdminVO product(AdminVO vo) {
		return sqlSession.selectOne("adminMember.product", vo);
	}
	
	
	
	
	
	
	


}
