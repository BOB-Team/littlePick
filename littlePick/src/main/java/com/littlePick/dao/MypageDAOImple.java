package com.littlePick.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.littlePick.domain.CommunityVO;

@Repository("mypageDAO") //(가로안은 호출시 별명)
public class MypageDAOImple {
	
	@Autowired //자동으로 껴들기 
	SqlSessionTemplate sqlSession; //root-context에서 지정한 값

	public CommunityVO selectUser(int user_num) {
		return sqlSession.selectOne("mypage.selectUser",user_num);
	}

	public List<CommunityVO> selectBoard(int user_num) {
		return sqlSession.selectList("mypage.selectBoard",user_num);
	}
	
	public List<CommunityVO> selectComment(int user_num) {
		return sqlSession.selectList("mypage.selectComment",user_num);
	}

	public List<CommunityVO> selectqna(int user_num) {
		return sqlSession.selectList("mypage.selectqna",user_num);
	}

	public CommunityVO selectQboard(int q_num) {
		return sqlSession.selectOne("mypage.selectQboard",q_num);
	}

	public void insertQboard(CommunityVO vo) {
		sqlSession.selectOne("mypage.insertQboard",vo);
		
	}

	public void updateCountQboard(int q_num) {
		sqlSession.selectOne("mypage.updateCountQboard",q_num);
		
	}

	public void settingUpdate(CommunityVO vo) {
		sqlSession.selectOne("mypage.settingUpdate",vo);
		
	}

	public int answerCount(int q_num) {
		return sqlSession.selectOne("mypage.answerCount",q_num);
		
	}

	public List<CommunityVO> selectAnswer(int q_num) {
		return sqlSession.selectList("mypage.selectAnswer",q_num);
	}
	
	
	
}