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
		sqlSession.selectOne("user.userInsert",vo);
		
	}

	public CommunityVO idCheck_Login(CommunityVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("user.idCheck_Login", vo);
	}

	public CommunityVO selectUser(int usernum) {
		return sqlSession.selectOne("user.selectUser", usernum);
	}
	



	  
	  //@Override 
	  //public MemberVO memberLogin(MemberVO vo) { // TODO Auto-generated
	  //method stub return null; }
	 

}
