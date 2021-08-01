package com.littlePick.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.littlePick.domain.CommunityVO;

@Repository("memberDAO")
public class MemberDAOImple implements MemberDAO{
	@Autowired
	SqlSessionTemplate sqlSession;

	public void userInsert(CommunityVO vo) {
		sqlSession.insert("user.userInsert",vo);
		
	}
	
	public CommunityVO adminidCheck_Login(CommunityVO vo) {
		return sqlSession.selectOne("user.adminidCheck_Login", vo);
	}

	public CommunityVO selectUser(int usernum) {
		return sqlSession.selectOne("user.selectUser", usernum);
	}

	public CommunityVO emailCheck_Login(CommunityVO vo) {
		return sqlSession.selectOne("user.emailCheck_Login", vo);
	}
	
	public CommunityVO nicknameCheck_Login(CommunityVO vo) {
		return sqlSession.selectOne("user.nicknameCheck_Login", vo);
	}



	  
	  //@Override 
	  //public MemberVO memberLogin(MemberVO vo) { // TODO Auto-generated
	  //method stub return null; }
	 

}
