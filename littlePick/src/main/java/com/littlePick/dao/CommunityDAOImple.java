package com.littlePick.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.littlePick.domain.CommunityVO;

@Repository("comDAO") //(가로안은 호출시 별명)
public class CommunityDAOImple {
	
	@Autowired //자동으로 껴들기 
	SqlSessionTemplate sqlSession; //root-context에서 지정한 값
	
	public String sysdate() {
		return sqlSession.selectOne("com.getDate"); //Mapper에서 받아오기 		
		
	}

	public CommunityVO selectBoard(CommunityVO vo) {
		return sqlSession.selectOne("com.selectBoard",vo);
	}

	public void insertBoard(CommunityVO vo) {
		sqlSession.selectOne("com.insertBoard", vo);
	}

	public int commentCount(int content_num) {
		return sqlSession.selectOne("com.commentCount",content_num);
	}
	
	public CommunityVO selectComment(int content_num) {
		return sqlSession.selectOne("com.selectComment",content_num);
	}
}
